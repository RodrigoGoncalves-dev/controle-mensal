import 'package:controle_mensal/domain/models/category_model.dart';
import 'package:controle_mensal/shared/http/dio_http.dart';
import 'package:na_regua_package/na_regua_package.dart';

class CategoryRepository {
  final Dio _client = DioHttp.build();

  Future<List<CategoryModel>> getAll() async {
    final response = await _client.get("category/");

    if (response.statusCode == 200) {
      return (response.data['data'] as List<Map<String, dynamic>>)
        .map((e) => CategoryModel.fromMap(e))
        .toList();
    }

    return [];
  }
}
