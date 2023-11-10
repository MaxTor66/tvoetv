import 'package:json_annotation/json_annotation.dart';

part 'film_in_top.g.dart';
@JsonSerializable(explicitToJson: true)
class FilmInTop{
  FilmInTop(this.id, this.name, this.mainImg, this.rankImg, this.topRank);
  int id;
  String name;
  String mainImg;
  String rankImg;
  int topRank;


  factory FilmInTop.fromJson(Map<String, dynamic> json) => _$FilmInTopFromJson(json);
  Map<String, dynamic> toJson() => _$FilmInTopToJson(this);
}