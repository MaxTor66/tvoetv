
import 'dart:convert';
import 'package:tvoetv/domain/entity/film_in_stage.dart';



class JsonFilmInStageDecoder {
  FilmInStage decode(String jsonString) {
    final Map<String, dynamic> json = jsonDecode(jsonString);
    final filmInStage = FilmInStage.fromJson(json);
    return filmInStage;
  }
}
