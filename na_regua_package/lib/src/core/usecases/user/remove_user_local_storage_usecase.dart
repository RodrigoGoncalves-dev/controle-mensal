import 'package:na_regua_package/na_regua_package.dart';

class RemoveUserLocalStorageUseCase {
  final IUserRepository _repository;

  RemoveUserLocalStorageUseCase(this._repository);

  Future<void> call() async {
    await _repository.removeUserLocalStorage();
  }
}
