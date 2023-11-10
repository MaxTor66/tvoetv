
import 'package:bloc/bloc.dart';

import '../data_provider/home_data_provider.dart';
import '../decoder/filminlenta_json_decoder.dart';
import '../decoder/filmsinlenta_json_decoder.dart';
import 'lenta_events.dart';
import 'lenta_states.dart';


class LentaBloc extends Bloc<LentaEvents, LentaState> {
  LentaBloc(this.dataProvider) : super(
      LentaInitial()) {
    on<OnLoadLentaEvent>((event, emit) async {
      try {

        var jsonFilmsInLentaFromServer = await dataProvider.getFilmsInLentaHttp();


        JsonFilmsInLentaDecoder filmsInLentaDecoder = JsonFilmsInLentaDecoder();

        final filmsInLenta=filmsInLentaDecoder.decode(jsonFilmsInLentaFromServer);
        print(filmsInLenta.filmsInLenta.first.img);

        emit(LentaLoadedSuccessState(filmsInLenta));
      } catch (e) {
        emit(LentaLoadedErrorState(exception: e));
      }



    });

  }

  DataProvider dataProvider;
}
