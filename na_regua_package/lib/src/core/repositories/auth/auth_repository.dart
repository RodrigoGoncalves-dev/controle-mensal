// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:na_regua_package/na_regua_package.dart';

class AuthRepository implements IAuthRepository {
  final FirebaseAuthUtil _firebaseAuthUtil = FirebaseAuthUtil();

  @override
  Future<User?> signUpByEmailWithPassword({required String email, required String password}) async {
    return await _firebaseAuthUtil.registerWithEmailAndPassword(email, password);
  }

  @override
  Future<void> sendEmailVerification() async {
    await _firebaseAuthUtil.sendEmailVerification();
  }

  @override
  Future<User?> signInWithEmailAndPassword({required String email, required String password}) async {
    return await _firebaseAuthUtil.signInWithEmailAndPassword(email, password);
  }
}
