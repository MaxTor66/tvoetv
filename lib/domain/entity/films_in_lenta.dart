import 'film_in_lenta.dart';

import 'package:json_annotation/json_annotation.dart';

part 'films_in_lenta.g.dart';
@JsonSerializable(explicitToJson: true)
class FilmsInLenta{

  List<FilmInLenta> filmsInLenta;

  FilmsInLenta(this.filmsInLenta);

  factory FilmsInLenta.fromJson(Map<String, dynamic> json) => _$FilmsInLentaFromJson(json);
  Map<String, dynamic> toJson() => _$FilmsInLentaToJson(this);
}