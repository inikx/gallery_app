import 'package:dio/dio.dart';
import 'package:gallery_app/data/models/photo/photo.dart';
import 'package:gallery_app/data/services/network_client.dart';

class PhotosNetworkService {
  Future<List<Photo>> getPhotos({
    required int page,
    required int limit,
    bool? isNew,
    bool? isPopular,
  }) async {
    final queryParams = <String, dynamic>{
      'page': page,
      'limit': limit,
    };
    if (isNew != null) {
      queryParams['new'] = isNew;
    }
    if (isPopular != null) {
      queryParams['popular'] = isPopular;
    }
    try {
      final response = await NetworkClient.get().get(
        '/photos',
        queryParameters: queryParams,
      );
      final items = response.data['data'];

      return (items).map<Photo>((e) {
        if (e is Map<String, dynamic>) {
          return Photo.fromJson(e);
        } else {
          throw FormatException('Unexpected response format');
        }
      }).toList();
    } on DioError {
      rethrow;
    }
  }
}
