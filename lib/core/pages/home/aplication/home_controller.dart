import 'package:controle_mensal/data/repositories/category_repository.dart';
import 'package:controle_mensal/data/repositories/user_repository.dart';
import 'package:controle_mensal/domain/models/category_model.dart';
import 'package:controle_mensal/domain/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final UserRepository _userRepository = UserRepository();
  final CategoryRepository _categoryRepository = CategoryRepository();
  UserModel? user = UserModel();
  List<CategoryModel> category = [];
  ValueNotifier<bool> isLoading = ValueNotifier(false);

  Future<void> init() async {
    isLoading.value = true;

    await getCategories();
    await getUser(id: "1");

    isLoading.value = false;
  }

  Future<void> getUser({required String id}) async {
    user = await _userRepository.getUserFromDB(id: id);
  }

  Future<void> getCategories() async {
    category = await _categoryRepository.getAll();
  }
}
