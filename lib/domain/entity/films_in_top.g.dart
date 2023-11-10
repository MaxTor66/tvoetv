// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'films_in_top.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilmsInTop _$FilmsInTopFromJson(Map<String, dynamic> json) => FilmsInTop(
      (json['filmsInTop'] as List<dynamic>)
          .map((e) => FilmInTop.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FilmsInTopToJson(FilmsInTop instance) =>
    <String, dynamic>{
      'filmsInTop': instance.filmsInTop.map((e) => e.toJson()).toList(),
    };
