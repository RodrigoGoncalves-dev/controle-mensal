import 'package:na_regua_package/na_regua_package.dart';

class UserRepository implements IUserRepository {
  final FirestoreUtils<UserModel> firestoreUtils = FirestoreUtils(
    collectionName: UserModel.collectionName,
    fromJson: (Map<String, dynamic> json) => UserModel.fromMap(json),
    toJson: (user) => user.toMap(),
  );

  @override
  Future<void> insertUser({required UserModel user}) async {
    await firestoreUtils.add(user);
  }

  @override
  Future<void> removeUserLocalStorage() async {
    final sp = await SharedPreferences.getInstance();
    await sp.remove('users');
  }

  @override
  Future<void> saveUserLocalStorageUsecase({required UserModel user}) async {
    final sp = await SharedPreferences.getInstance();
    await sp.setString('users', user.toJson());
  }

  @override
  Future<UserModel?> getUserFromDB({required String id}) async {
    return await firestoreUtils.getById(id);
  }
}
