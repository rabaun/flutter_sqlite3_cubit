import '../db/dao/user_dao.dart';
import '../models/user.dart';

class UserRepository {
  final userDao = UserDao();

  getCounterFromDatabase() => userDao.getCounterFromDatabase();

  getNameFromDatabase() => userDao.getNameFromDatabase();

  updateCounterInDatabase(User user) => userDao.updateCounterInDatabase(user);

  getDatabase() => userDao.getDatabase();

  updateDatabase(User user) => userDao.updateDatabase(user);

  deleteDatabase() => userDao.deleteDatabase();
}
