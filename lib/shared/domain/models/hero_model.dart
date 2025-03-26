import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hero_model.g.dart';

@JsonSerializable()
class HeroModel {
  final String name;
  final Map<String, dynamic> images;
  final Map<String, int> powerstats;

  HeroModel({required this.name, required this.images, required this.powerstats});

  String get imageUrl => images['sm'];

  factory HeroModel.fromJson(Map<String, dynamic> json) =>
      _$HeroModelFromJson(json);

  Map<String, dynamic> toJson() => _$HeroModelToJson(this);
}
