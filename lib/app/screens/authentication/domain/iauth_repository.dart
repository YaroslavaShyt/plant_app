abstract interface class IAuthRepository{
  Future<bool> login();
  Future<bool> register();
  Future<bool> logout();
}