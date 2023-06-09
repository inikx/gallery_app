part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.initial() = _Initial;
  const factory UsersState.loadInProgress() = _LoadInProgress;
  const factory UsersState.loaded({required User item}) = _Loaded;
}
