


import '../entity/films_in_top.dart';

abstract class TopState {}

class TopInitial extends TopState {}

class TopLoadedSuccessState extends TopState {
  FilmsInTop filmsInTop;

  TopLoadedSuccessState(this.filmsInTop);
}


class TopLoadedErrorState extends TopState {
  final Object? exception;

  TopLoadedErrorState({this.exception});
}