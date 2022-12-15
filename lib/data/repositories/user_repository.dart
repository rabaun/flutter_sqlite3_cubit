import '../db/dao/user_dao.dart';
import '../models/user.dart';

class UserRepository {
  final userDao = UserDao();

  getCounterFromDatabase() => userDao.getCounterFromDatabase();

  getNameFromDatabase() => userDao.getNameFromDatabase();

  getAgeFromDatabase() => userDao.getAgeFromDatabase();

  updateCounterInDatabase() => userDao.updateCounterInDatabase();

  getDatabase() => userDao.getDatabase();

  updateDatabase() => userDao.updateDatabase();

  deleteDatabase() => userDao.deleteDatabase();
}
