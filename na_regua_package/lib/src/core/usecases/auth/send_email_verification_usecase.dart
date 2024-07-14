import 'package:na_regua_package/na_regua_package.dart';

class SendEmailVerificationUsecase {
  final IAuthRepository _iAuthRepository;

  SendEmailVerificationUsecase(this._iAuthRepository);

  Future<void> call() async {
    await _iAuthRepository.sendEmailVerification();
  }
}
