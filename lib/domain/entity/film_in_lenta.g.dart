// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_in_lenta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilmInLenta _$FilmInLentaFromJson(Map<String, dynamic> json) => FilmInLenta(
      json['id'] as int,
      json['name'] as String,
      json['img'] as String,
      (json['feedbackRank'] as num).toDouble(),
    );

Map<String, dynamic> _$FilmInLentaToJson(FilmInLenta instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      'feedbackRank': instance.feedbackRank,
    };
