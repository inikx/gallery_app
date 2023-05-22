import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gallery_app/data/models/photo/photo.dart';
import 'package:gallery_app/data/services/photos/repository.dart';

part 'photos_state.dart';
part 'photos_event.dart';
part 'photos_bloc.freezed.dart';

class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  final PhotosRepository _photosRepository;
  PhotosBloc(this._photosRepository) : super(const PhotosState()) {
    const int limit = 10;

    ///Эвент загрузки списка фото
    on<_LoadPhotosEvent>((event, emit) async {
      final lastListingState = state;

      try {
        final newItems = await _photosRepository.getPhotos(
          page: event.page,
          limit: limit,
          isNew: event.isNew,
          isPopular: event.isPopular,
        );
        final isLastPage = newItems.length < limit;
        final nextPageKey = isLastPage ? null : event.page + 1;
        emit(
          _PhotosListingState(
            nextPageKey: nextPageKey,
            itemList: [...lastListingState.itemList, ...newItems],
          ),
        );
      } catch (e) {
        emit(
          _PhotosListingState(
            itemList: lastListingState.itemList,
            nextPageKey: lastListingState.nextPageKey,
            error: e,
          ),
        );
        rethrow;
      }
    });

    ///Эвент обновления списка фото
    on<_RefreshEvent>((event, emit) {
      emit(state.copyWith(itemList: [], error: null, nextPageKey: 2));
    });
  }
}
