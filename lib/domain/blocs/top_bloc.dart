
import 'package:bloc/bloc.dart';
import 'package:tvoetv/domain/blocs/top_events.dart';
import 'package:tvoetv/domain/blocs/top_states.dart';

import '../data_provider/home_data_provider.dart';
import '../decoder/filmsintop_json_decoder.dart';

class TopBloc extends Bloc<TopEvents, TopState> {
  TopBloc(this.dataProvider) : super(
      TopInitial()) {
    on<OnLoadTopEvent>((event, emit) async {
      try {

        var jsonFilmsInTopFromServer = await dataProvider.getFilmsInTopHttp();


        JsonFilmsInTopDecoder filmsInTopDecoder = JsonFilmsInTopDecoder();

        final filmsInTop=filmsInTopDecoder.decode(jsonFilmsInTopFromServer);
      //  print(filmsInTop.filmsInTop.first.mainImg);

        emit(TopLoadedSuccessState(filmsInTop));
      } catch (e) {
        emit(TopLoadedErrorState(exception: e));
      }



    });

  }

  DataProvider dataProvider;
}
