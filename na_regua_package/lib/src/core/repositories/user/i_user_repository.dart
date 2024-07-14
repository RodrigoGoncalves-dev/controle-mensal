import 'package:na_regua_package/src/core/models/user_model.dart';

abstract class IUserRepository {
  Future<void> insertUser({required UserModel user});
  Future<void> saveUserLocalStorageUsecase({required UserModel user});
  Future<void> removeUserLocalStorage();
  Future<UserModel?> getUserFromDB({required String id});
}
