import 'package:dio/dio.dart';


class DataProvider {
  final dio = Dio();

  Future<String> getFilmInStageHttp() async {
    String jsonString = "";
    const String url = "https://my-json-server.typicode.com/MaxTor66/tvoelive/filmInStage";
    try {
      Options ops = Options(responseType: ResponseType.plain);
      final responseDio = await dio.get(
        url,
        options: ops,
        queryParameters: {},
      );

      jsonString = responseDio.toString();
    } catch (e) {
      throw 'There is no connection';
    }

    return jsonString;
  }


  Future<String> getFilmsInLentaHttp() async {
    String jsonString = "";
    const String url = "https://my-json-server.typicode.com/MaxTor66/tvoelive/filmsInLenta";
    try {
      Options ops = Options(responseType: ResponseType.plain);
      final responseDio = await dio.get(
        url,
        options: ops,
        queryParameters: {},
      );

      jsonString = responseDio.toString();
    } catch (e) {
      throw 'There is no connection';
    }

    return jsonString;
  }

  Future<String> getFilmsInTopHttp() async {
    String jsonString = "";
    const String url = "https://my-json-server.typicode.com/MaxTor66/tvoelive/filmsInTop";
    try {
      Options ops = Options(responseType: ResponseType.plain);
      final responseDio = await dio.get(
        url,
        options: ops,
        queryParameters: {},
      );

      jsonString = responseDio.toString();
    } catch (e) {
      throw 'There is no connection';
    }

    return jsonString;
  }


}
