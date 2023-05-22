import 'package:dio/dio.dart';
import 'package:gallery_app/data/models/user/user.dart';
import 'package:gallery_app/data/services/network_client.dart';

class UsersNetworkService {
  Future<User> getUser({
    required int id,
  }) async {
    try {
      final response = await NetworkClient.get().get(
        '/users/' + id.toString(),
      );
      final item = response.data;

      return User.fromJson(item);
    } on DioError {
      rethrow;
    }
  }
}
