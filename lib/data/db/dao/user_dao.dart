import '../../models/user.dart';
import '../database_helper.dart';

class UserDao {
  final dbHelper = DatabaseHelper.dbHelper;

  var _id = 0;
  var _name = String;
  var _age = 0;
  late List<Map<String, dynamic>> _maps;

  void getCounterFromDatabase() async {
    final db = await dbHelper.database;
    var values = db.select('SELECT id FROM list001;');
    if (values.isNotEmpty) _id = values.last['id'];
  }

  void getNameFromDatabase() async{
    final db = await dbHelper.database;
    var values = db.select('SELECT name FROM list001;');
    if (values.isNotEmpty) _name = values.last['name'];
  }

  void getAgeFromDatabase() async{
    final db = await dbHelper.database;
    var values = db.select('SELECT name FROM list001;');
    if (values.isNotEmpty) _age = values.last['age'];
  }

  void updateCounterInDatabase() async{
    final db = await dbHelper.database;
    // db.execute('DELETE FROM list;');
    db.execute('INSERT INTO list001 (name, age) VALUES ($_name, $_age);');
  }

  void getDatabase() async{
    final db = await dbHelper.database;
    _maps = db.select('SELECT * FROM list001;');
  }

  void updateDatabase() async{
    final db = await dbHelper.database;
    db.execute('UPDATE list001 SET name = name+1 WHERE id = $_id;');
  }

  void deleteDatabase() async{
    final db = await dbHelper.database;
    db.execute('DELETE FROM list001;');
  }
}
