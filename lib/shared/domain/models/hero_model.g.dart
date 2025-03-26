// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeroModel _$HeroModelFromJson(Map<String, dynamic> json) => HeroModel(
  name: json['name'] as String,
  images: json['images'] as Map<String, dynamic>,
  powerstats: Map<String, int>.from(json['powerstats'] as Map),
);

Map<String, dynamic> _$HeroModelToJson(HeroModel instance) => <String, dynamic>{
  'name': instance.name,
  'images': instance.images,
  'powerstats': instance.powerstats,
};
