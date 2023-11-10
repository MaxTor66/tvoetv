import 'dart:convert';
import 'package:tvoetv/domain/entity/film_in_top.dart';



class JsonFilmInTopDecoder {
  FilmInTop decode(String jsonString) {
    final Map<String, dynamic> json = jsonDecode(jsonString);
    final filmInTop = FilmInTop.fromJson(json);
    return filmInTop;
  }
}
