import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:regulation/home/widgets/search_app_bar.dart';

import '../home.dart';
import 'init_app_bar.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? foregroundColor = Theme.of(context).appBarTheme.foregroundColor;
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
      builder: (context, state) {
        if (state is SearchTextFieldActivatedState) {
          return SearchAppBar(
            foregroundColor: foregroundColor,
          );
        }
        return InitAppBAr(
          foregroundColor: foregroundColor,
        );
      },
    );
  }
}
