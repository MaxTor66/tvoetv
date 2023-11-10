// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_in_top.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilmInTop _$FilmInTopFromJson(Map<String, dynamic> json) => FilmInTop(
      json['id'] as int,
      json['name'] as String,
      json['mainImg'] as String,
      json['rankImg'] as String,
      json['topRank'] as int,
    );

Map<String, dynamic> _$FilmInTopToJson(FilmInTop instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mainImg': instance.mainImg,
      'rankImg': instance.rankImg,
      'topRank': instance.topRank,
    };
