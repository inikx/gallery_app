import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gallery_app/data/models/user/user.dart';
import 'package:gallery_app/data/services/users/repository.dart';

part 'users_state.dart';
part 'users_event.dart';
part 'users_bloc.freezed.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final UsersRepository _usersRepository;
  UsersBloc(this._usersRepository) : super(const UsersState.initial()) {
    ///Эвент загрузки пользователя
    on<_LoadUserEvent>((event, emit) async {
      emit(_LoadInProgress());
      try {
        final item = await _usersRepository.getUser(
          id: event.id,
        );
        emit(_Loaded(item: item));
      } catch (e) {
        rethrow;
      }
    });
  }
}
