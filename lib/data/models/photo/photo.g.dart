// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Photo _$$_PhotoFromJson(Map<String, dynamic> json) => _$_Photo(
      id: json['id'] as int,
      name: json['name'] as String,
      dateCreate: DateTime.parse(json['dateCreate'] as String),
      description: json['description'] as String,
      isNew: json['new'] as bool,
      isPopular: json['popular'] as bool,
      image: json['image'] == null
          ? const ApiImage(id: 0, name: '')
          : ApiImage.fromJson(json['image'] as Map<String, dynamic>),
      user: json['user'] as String?,
    );

Map<String, dynamic> _$$_PhotoToJson(_$_Photo instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dateCreate': instance.dateCreate.toIso8601String(),
      'description': instance.description,
      'new': instance.isNew,
      'popular': instance.isPopular,
      'image': instance.image,
      'user': instance.user,
    };
