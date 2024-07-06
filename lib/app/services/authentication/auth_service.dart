import 'package:plant_app/app/screens/authentication/data/models/generated_files/objectbox.g.dart';
import 'package:plant_app/app/screens/authentication/data/models/user.dart';
import 'package:plant_app/app/services/authentication/iauth_service.dart';
import 'package:plant_app/app/services/database/idatabase_service.dart';

class AuthService implements IAuthService {
  final IDatabaseService _databaseService;

  AuthService({required IDatabaseService databaseService})
      : _databaseService = databaseService {
    _userBox = Box<User>(_databaseService.database.store);
  }

  Box<User>? _userBox;

  @override
  bool changePassword({required String oldPassword, required User user}) {
    String? password = getPassword(user: user);
    if (password != null) {
      if (password == oldPassword) {
        int? id = _userBox?.put(user);
        return id == null;
      }
      return false;
    }
    return false;
  }

  @override
  bool deletePassword({required User user}) {
    bool? isRemoved = _userBox?.remove(user.id);
    if (isRemoved != null) {
      return isRemoved;
    }
    return false;
  }

  @override
  bool setPassword({required User user}) {
    int? id = _userBox?.put(user);
    return id == null;
  }

  @override
  String? getPassword({required User user}) {
    return _userBox?.get(user.id)?.password;
  }
}
