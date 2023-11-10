
import 'package:bloc/bloc.dart';

import '../data_provider/home_data_provider.dart';
import '../decoder/filminstage_json_decoder.dart';
import 'stage_events.dart';
import 'stage_states.dart';

class StageBloc extends Bloc<StageEvents, StageState> {
  StageBloc(this.dataProvider) : super(
      StageInitial()) {
    on<OnLoadStageEvent>((event, emit) async {
      try {
        var jsonFilmInStageFromServer = await dataProvider.getFilmInStageHttp();

        JsonFilmInStageDecoder filmInStageDecoder = JsonFilmInStageDecoder();
        final filmInStage=filmInStageDecoder.decode(jsonFilmInStageFromServer);


        emit(StageLoadedSuccessState(filmInStage));
      } catch (e) {
        emit(StageLoadedErrorState(exception: e));
      }



    });

  }

  DataProvider dataProvider;
}
