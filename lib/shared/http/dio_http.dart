import 'package:na_regua_package/na_regua_package.dart';

class DioHttp {
  static Dio build() {
    final client = Dio(
      BaseOptions(
        baseUrl: 'http://192.168.1.3:3005/',
        receiveTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        receiveDataWhenStatusError: true,
        contentType: 'application/json',
      ),
    );

    return client;
  }
}
