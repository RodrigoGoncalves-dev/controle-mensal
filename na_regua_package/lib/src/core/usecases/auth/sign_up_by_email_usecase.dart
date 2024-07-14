import 'package:na_regua_package/na_regua_package.dart';

class SignUpByEmailUsecase {
  final IAuthRepository _iAuthRepository;

  SignUpByEmailUsecase(this._iAuthRepository);

  Future<User?> call({required String email, required String password}) async {
    return await _iAuthRepository.signUpByEmailWithPassword(email: email, password: password);
  }
}
