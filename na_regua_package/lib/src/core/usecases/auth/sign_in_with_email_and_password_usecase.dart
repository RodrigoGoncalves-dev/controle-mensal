import 'package:na_regua_package/na_regua_package.dart';

class SignInWithEmailAndPasswordUsecase {
  final IAuthRepository _iAuthRepository;

  SignInWithEmailAndPasswordUsecase(this._iAuthRepository);

  Future<User?> call({required String email, required String password}) async {
    return await _iAuthRepository.signInWithEmailAndPassword(email: email, password: password);
  }
}
