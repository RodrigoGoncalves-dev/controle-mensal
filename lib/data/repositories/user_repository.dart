import 'package:controle_mensal/shared/http/dio_http.dart';
import 'package:controle_mensal/domain/models/user_model.dart';
import 'package:na_regua_package/na_regua_package.dart';

class UserRepository {
  final Dio _client = DioHttp.build();

  Future<UserModel?> getUserFromDB({required String id}) async {
    final response = await _client.get('users/$id');

    if (response.statusCode == 200) {
      final user = response.data['data'] as Map<String, dynamic>;

      return UserModel.fromMap(user);
    }

    return null;
  }
}
