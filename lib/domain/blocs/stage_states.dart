
import 'package:tvoetv/domain/entity/film_in_stage.dart';

abstract class StageState {}

class StageInitial extends StageState {}

class StageLoadedSuccessState extends StageState {
  FilmInStage filmInStage;

  StageLoadedSuccessState(this.filmInStage);
}


class StageLoadedErrorState extends StageState {
  final Object? exception;
  StageLoadedErrorState({this.exception});
}