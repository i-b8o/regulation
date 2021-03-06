import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:local_storage_regulation_api/local_storage_regulation_api.dart';

import 'bootstrap.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.black));

  final regulationApi = LocalStorageRegulationApi(
    plugin: await SharedPreferences.getInstance(),
  );

  bootstrap(regulationApi: regulationApi);
}
