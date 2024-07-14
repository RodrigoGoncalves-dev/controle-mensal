import 'package:na_regua_package/na_regua_package.dart';

class GetUserFromDbUsecase {
  final IUserRepository _repository;

  GetUserFromDbUsecase(this._repository);

  Future<UserModel?> call({required String id}) async {
    return await _repository.getUserFromDB(id: id);
  }
}
