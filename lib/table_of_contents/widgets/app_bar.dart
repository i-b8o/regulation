import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:regulation/home/widgets/search_app_bar.dart';

import '../bloc/table_of_contents_bloc.dart';
import 'init_app_bar.dart';

class TableOfContentsPageAppBar extends StatelessWidget {
  const TableOfContentsPageAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? foregroundColor = Theme.of(context).appBarTheme.foregroundColor;
    return BlocBuilder<TableOfContentsBloc, TableOfContentsState>(
      buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
      builder: (context, state) {
        print(state);
        if (state is StateSearchTextFieldActivated) {
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
