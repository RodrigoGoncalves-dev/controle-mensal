import 'package:na_regua_package/na_regua_package.dart';
import 'package:na_regua_package/src/core/models/auth_model.dart';

abstract class IFranchiseRepository {
  Future<FranchiseModel> getFranchise({required String value});
  Future<FranchiseModel> createAFranchise({required FranchiseModel franchiseModel, required AuthModel authModel});
  Future<FranchiseModel> updateFranchise({required FranchiseModel franchiseModel, required AuthModel authModel});
  Future<void> deleteFranchise({required FranchiseModel franchiseModel, required AuthModel authModel});
  Future<ServiceFranchiseModel> getServicesByFranchise({required String id});
  //TODO: Criar o RangeModel
  // Future<List<FranchiseModel>> getFranchises({required RangeModel rangeModel});
}
