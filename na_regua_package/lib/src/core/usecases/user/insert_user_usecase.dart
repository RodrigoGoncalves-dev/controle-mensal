import 'package:na_regua_package/na_regua_package.dart';

class InsertUserUsecase {
  final IUserRepository _userRepository;
  InsertUserUsecase(this._userRepository);

  Future<void> call({required UserModel user, required String id}) async {
    user.id = id;
    await _userRepository.insertUser(user: user);
  }
}
