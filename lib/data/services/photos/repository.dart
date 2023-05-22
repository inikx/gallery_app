import 'package:gallery_app/data/models/photo/photo.dart';
import 'package:gallery_app/data/services/photos/network_service.dart';

class PhotosRepository {
  PhotosRepository();

  final PhotosNetworkService _PhotosNetworkService = PhotosNetworkService();
  Future<List<Photo>> getPhotos({
    required int page,
    required int limit,
    bool? isNew,
    bool? isPopular,
  }) {
    return _PhotosNetworkService.getPhotos(
      page: page,
      limit: limit,
      isNew: isNew,
      isPopular: isPopular,
    );
  }
}
