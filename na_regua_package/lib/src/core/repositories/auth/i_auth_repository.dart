import 'package:na_regua_package/na_regua_package.dart';

abstract class IAuthRepository {
  Future<User?> signUpByEmailWithPassword({
    required String email,
    required String password,
  });
  Future<void> sendEmailVerification();
  Future<User?> signInWithEmailAndPassword({required String email, required String password});
}
