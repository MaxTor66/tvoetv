
import 'dart:convert';
import 'package:tvoetv/domain/entity/film_in_lenta.dart';



class JsonFilmInLentaDecoder {
  FilmInLenta decode(String jsonString) {
    final Map<String, dynamic> json = jsonDecode(jsonString);
    final filmInLenta = FilmInLenta.fromJson(json);
    return filmInLenta;
  }
}
