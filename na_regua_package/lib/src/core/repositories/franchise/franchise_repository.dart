import 'package:na_regua_package/src/core/models/auth_model.dart';
import 'package:na_regua_package/src/core/models/franchise_model.dart';
import 'package:na_regua_package/src/core/models/service_franchise_model.dart';
import 'package:na_regua_package/src/core/repositories/franchise/i_franchise_repository.dart';

class FranchiseRepository implements IFranchiseRepository {
  @override
  Future<FranchiseModel> createAFranchise({required FranchiseModel franchiseModel, required AuthModel authModel}) {
    // TODO: implement createAFranchise
    throw UnimplementedError();
  }

  @override
  Future<void> deleteFranchise({required FranchiseModel franchiseModel, required AuthModel authModel}) {
    // TODO: implement deleteFranchise
    throw UnimplementedError();
  }

  @override
  Future<FranchiseModel> getFranchise({required String value}) {
    // TODO: implement getFranchise
    throw UnimplementedError();
  }

  @override
  Future<List<FranchiseModel>> getFranchises({required rangeModel}) {
    // TODO: implement getFranchises
    throw UnimplementedError();
  }

  @override
  Future<ServiceFranchiseModel> getServicesByFranchise({required String id}) {
    // TODO: implement getServicesByFranchise
    throw UnimplementedError();
  }

  @override
  Future<FranchiseModel> updateFranchise({required FranchiseModel franchiseModel, required AuthModel authModel}) {
    // TODO: implement updateFranchise
    throw UnimplementedError();
  }
}
