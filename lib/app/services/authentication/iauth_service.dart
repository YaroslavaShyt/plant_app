import 'package:plant_app/app/screens/authentication/data/models/user.dart';

abstract interface class IAuthService {
  bool setPassword({required User user});
  bool changePassword({required String oldPassword, required User user});
  bool deletePassword({required User user});
  String? getPassword({required User user});
}
