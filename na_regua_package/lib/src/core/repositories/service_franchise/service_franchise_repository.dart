import 'package:na_regua_package/src/core/enums/service_type_enum.dart';
import 'package:na_regua_package/src/core/models/auth_model.dart';
import 'package:na_regua_package/src/core/models/service_franchise_model.dart';
import 'package:na_regua_package/src/core/repositories/service_franchise/i_service_franchise_repository.dart';

class ServiceFranchiseRepository implements IServiceFranchiseRepository {
  @override
  Future<void> delete({required String id, required AuthModel authModel, bool isDeleted = false}) async {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<ServiceFranchiseModel>> getServiceByTypeService({required ServiceTypeEnum serviceTypeEnum}) async {
    throw UnimplementedError();
  }

  @override
  Future<List<ServiceFranchiseModel>> upsert({required List<ServiceFranchiseModel> services, required AuthModel authModel}) async {
    // TODO: implement upsert
    throw UnimplementedError();
  }
}
