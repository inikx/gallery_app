part of 'photos_bloc.dart';

@freezed
class PhotosState with _$PhotosState {
  const factory PhotosState({
    @Default(0) int? nextPageKey,
    @Default([]) List<Photo> itemList,
    Object? error,
  }) = _PhotosListingState;
}
