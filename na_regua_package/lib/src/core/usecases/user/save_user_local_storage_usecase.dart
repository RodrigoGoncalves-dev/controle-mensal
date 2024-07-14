import 'package:na_regua_package/na_regua_package.dart';

class SaveUserLocalStorageUsecase {
  final IUserRepository _repository;

  SaveUserLocalStorageUsecase(this._repository);

  Future<void> call({required UserModel user}) async {
    await _repository.saveUserLocalStorageUsecase(user: user);
  }
}
