import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gallery_app/data/models/api_image/api_image.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    required int id,
    required String name,
    required DateTime dateCreate,
    required String description,
    @JsonKey(name: 'new') required bool isNew,
    @JsonKey(name: 'popular') required bool isPopular,
    @Default(ApiImage(id: 0, name: '')) ApiImage image,
    String? user,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
