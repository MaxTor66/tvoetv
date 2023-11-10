import 'dart:convert';
import 'package:tvoetv/domain/entity/films_in_lenta.dart';

import '../entity/film_in_lenta.dart';



class JsonFilmsInLentaDecoder {
  FilmsInLenta decode(String jsonString) {

    final json = jsonDecode(jsonString) as List<dynamic>;
    final filmInLentaServer = json.map((dynamic e) => FilmInLenta.fromJson(e as Map<String, dynamic>)).toList();
    FilmsInLenta filmsInLenta = FilmsInLenta(filmInLentaServer);
    return filmsInLenta;

  }
}
