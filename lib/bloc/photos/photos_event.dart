part of 'photos_bloc.dart';

@freezed
class PhotosEvent with _$PhotosEvent {
  const factory PhotosEvent.loadPhotos({
    required int page,
    bool? isNew,
    bool? isPopular,
  }) = _LoadPhotosEvent;
  const factory PhotosEvent.refresh() = _RefreshEvent;
}
