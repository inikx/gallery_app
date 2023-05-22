import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_image.freezed.dart';
part 'api_image.g.dart';

@freezed
class ApiImage with _$ApiImage {
  const factory ApiImage({required int id, required String name}) = _ApiImage;

  factory ApiImage.fromJson(Map<String, dynamic> json) =>
      _$ApiImageFromJson(json);
}
