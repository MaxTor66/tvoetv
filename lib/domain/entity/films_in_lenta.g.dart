// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'films_in_lenta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilmsInLenta _$FilmsInLentaFromJson(Map<String, dynamic> json) => FilmsInLenta(
      (json['filmsInLenta'] as List<dynamic>)
          .map((e) => FilmInLenta.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FilmsInLentaToJson(FilmsInLenta instance) =>
    <String, dynamic>{
      'filmsInLenta': instance.filmsInLenta.map((e) => e.toJson()).toList(),
    };
