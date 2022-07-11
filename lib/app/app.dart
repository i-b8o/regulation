import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:regulation_repository/regulation_repository.dart';

import '../home/view/home_page.dart';
import '../one/one.dart';
import '../theme/theme.dart';
import '../two/two.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.regulationRepository}) : super(key: key);

  final RegulationRepository regulationRepository;
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: regulationRepository,
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FlutterRegulationTheme.light,
      darkTheme: FlutterRegulationTheme.dark,
      routes: {
        '/': (context) => HomePage(),
        '/buy': (context) => One(),
        '/regulation': (context) => Two(),
      },
      initialRoute: '/',
      // home: const HomePage(),
    );
  }
}
