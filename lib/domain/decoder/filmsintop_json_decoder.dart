import 'dart:convert';
import 'package:tvoetv/domain/entity/films_in_top.dart';

import '../entity/film_in_top.dart';



class JsonFilmsInTopDecoder {
  FilmsInTop decode(String jsonString) {

    final json = jsonDecode(jsonString) as List<dynamic>;
    final filmsInTopServer = json.map((dynamic e) => FilmInTop.fromJson(e as Map<String, dynamic>)).toList();
    FilmsInTop filmsInTop = FilmsInTop(filmsInTopServer);
    return filmsInTop;

  }
}
