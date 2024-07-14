import 'package:na_regua_package/na_regua_package.dart';

abstract class ICepRepository {
  Future<CepModel> getCep({required String cep});
}
