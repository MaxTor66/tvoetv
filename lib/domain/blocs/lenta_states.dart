
import 'package:tvoetv/domain/entity/films_in_lenta.dart';

abstract class LentaState {}

class LentaInitial extends LentaState {}

class LentaLoadedSuccessState extends LentaState {
  FilmsInLenta filmsInLenta;

  LentaLoadedSuccessState(this.filmsInLenta);
}


class LentaLoadedErrorState extends LentaState {
  final Object? exception;

  LentaLoadedErrorState({this.exception});
}