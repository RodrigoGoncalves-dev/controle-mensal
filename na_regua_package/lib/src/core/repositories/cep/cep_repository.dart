// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:na_regua_package/na_regua_package.dart';
import 'package:na_regua_package/src/core/models/cep_model.dart';
import 'package:na_regua_package/src/core/repositories/cep/i_cep_repository.dart';

class CepRepository implements ICepRepository {
  final HttpDio http;
  CepRepository({
    required this.http,
  });
  @override
  Future<CepModel> getCep({required String cep}) async {
    final response = await http.get('https://viacep.com.br/ws/$cep/json/');

    final List listData = response.data;

    return listData.map<CepModel>((cep) => CepModel.fromMap(cep)).toList().first;
  }
}
