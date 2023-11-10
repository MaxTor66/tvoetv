import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tvoetv/ui/my_app.dart';

import 'domain/data_provider/home_data_provider.dart';

void main() {
  GetIt.instance.registerSingleton<DataProvider>(DataProvider());
  GetIt.I<DataProvider>().dio;
  runApp(const MyApp());
}


