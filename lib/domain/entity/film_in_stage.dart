import 'package:json_annotation/json_annotation.dart';

part 'film_in_stage.g.dart';
@JsonSerializable(explicitToJson: true)
class FilmInStage{
FilmInStage(this.id, this.titleImg, this.description, this.mainImg);
int id;
String titleImg;
String description;
String mainImg;


factory FilmInStage.fromJson(Map<String, dynamic> json) => _$FilmInStageFromJson(json);
Map<String, dynamic> toJson() => _$FilmInStageToJson(this);
}