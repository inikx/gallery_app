import 'package:gallery_app/data/models/user/user.dart';
import 'package:gallery_app/data/services/users/network_service.dart';

class UsersRepository {
  UsersRepository();

  final UsersNetworkService _usersNetworkService = UsersNetworkService();
  Future<User> getUser({
    required int id,
  }) {
    return _usersNetworkService.getUser(
      id: id,
    );
  }
}
