abstract interface class IDatabaseService {
  Future<void> create({required String tableName});
  Future<void> read();
  Future<void> update();
  Future<void> delete();
}
