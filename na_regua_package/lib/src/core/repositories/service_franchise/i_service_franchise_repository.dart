import 'package:na_regua_package/na_regua_package.dart';
import 'package:na_regua_package/src/core/models/auth_model.dart';

abstract class IServiceFranchiseRepository {
  Future<List<ServiceFranchiseModel>> getServiceByTypeService({required ServiceTypeEnum serviceTypeEnum});
  Future<void> delete({required String id, required AuthModel authModel, bool isDeleted = false});
  Future<List<ServiceFranchiseModel>> upsert({required List<ServiceFranchiseModel> services, required AuthModel authModel});
}
