import 'film_in_top.dart';

import 'package:json_annotation/json_annotation.dart';

part 'films_in_top.g.dart';
@JsonSerializable(explicitToJson: true)
class FilmsInTop{

  List<FilmInTop> filmsInTop;

  FilmsInTop(this.filmsInTop);

  factory FilmsInTop.fromJson(Map<String, dynamic> json) => _$FilmsInTopFromJson(json);
  Map<String, dynamic> toJson() => _$FilmsInTopToJson(this);
}