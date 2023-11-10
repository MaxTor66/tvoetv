import 'package:json_annotation/json_annotation.dart';

part 'film_in_lenta.g.dart';
@JsonSerializable(explicitToJson: true)
class FilmInLenta{
  FilmInLenta(this.id, this.name, this.img, this.feedbackRank);
  int id;
  String name;
  String img;
  double feedbackRank;


  factory FilmInLenta.fromJson(Map<String, dynamic> json) => _$FilmInLentaFromJson(json);
  Map<String, dynamic> toJson() => _$FilmInLentaToJson(this);
}