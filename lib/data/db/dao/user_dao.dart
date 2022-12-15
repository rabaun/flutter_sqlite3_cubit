import '../../models/user.dart';
import '../database_helper.dart';

class UserDao {
  final dbHelper = DatabaseHelper.dbHelper;

  Future<List<User>> getCounterFromDatabase() async {
    final db = await dbHelper.database;
    var users = db.select('SELECT id FROM list003;');
    List<User> userList =
        users.isNotEmpty ? users.map((e) => User.fromMap(e)).toList() : [];
    return userList;
  }

  Future<List<User>> getNameFromDatabase() async {
    final db = await dbHelper.database;
    var users = db.select('SELECT name FROM list003;');
    List<User> userList =
        users.isNotEmpty ? users.map((e) => User.fromMap(e)).toList() : [];
    return userList;
  }

  Future<void> updateCounterInDatabase(User user) async {
    final db = await dbHelper.database;
    var users = db.execute(
        'INSERT INTO list003 (name) VALUES ("${user.name}");');
    return users;
  }

  Future<List<User>> getDatabase() async {
    final db = await dbHelper.database;
    var maps = db.select('SELECT * FROM list003;');
    List<User> userList =
        maps.isNotEmpty ? maps.map((e) => User.fromMap(e)).toList() : [];
    return userList;
  }

  void updateDatabase(User user) async {
    final db = await dbHelper.database;
    db.execute('UPDATE list003 SET name = name+1 WHERE id = ${user.id};');
  }

  void deleteDatabase() async {
    final db = await dbHelper.database;
    db.execute('DELETE FROM list003;');
  }
}
