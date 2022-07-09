import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:regulations_local_storage_repository/regulations_local_storage_repository.dart';

import '../views/main_page/main_page.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.regulationsLocalStorageRepository})
      : super(key: key);

  final RegulationsLocalStorageRepository regulationsLocalStorageRepository;
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: regulationsLocalStorageRepository,
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.teal),
        home: const MainPage(),
      );
}
