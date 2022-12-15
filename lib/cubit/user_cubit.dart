import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';

import '../data/models/user.dart';
import '../data/repositories/user_repository.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final UserRepository repository;

  UserCubit(this.repository) : super(UserInitial());

  void getNameFromDatabase() {
    emit(UserLoading());
    repository.getNameFromDatabase().then((users) {
      emit(UserLoaded(users: users));
    });
  }

  // void addUser(User user) {
  //   if (user.name.isEmpty) {
  //     emit(UserError(error: "Form is empty!"));
  //     return;
  //   }
  //   emit(UserLoading());
  //   repository.addUser(user: user).then((value) {
  //     getUsers();
  //   });
  // }
  //
  // void updateUser(User user) {
  //   if (user.name.isEmpty) {
  //     emit(UserError(error: "Form is empty!"));
  //     return;
  //   }
  //   emit(UserLoading());
  //   repository.updateUser(user: user).then((value) {
  //     Logger().e("Update user : ${user.toMap()}");
  //     getUsers();
  //   });
  // }
  //
  // void removeUser(User user) {
  //   emit(UserLoading());
  //   repository.removeUser(id: user.id ?? 0).then((intRemove) {
  //     getUsers();
  //   });
  // }
}
