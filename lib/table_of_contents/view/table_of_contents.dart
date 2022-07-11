import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/table_of_contents_bloc.dart';
import '../widgets/widgets.dart';

class TableOfContentsPage extends StatelessWidget {
  const TableOfContentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TableOfContentsBloc(),
      child: const TableOfContentsView(),
    );
  }
}

class TableOfContentsView extends StatelessWidget {
  const TableOfContentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
            ),
            child: Container(
              child: TableOfContentsPageAppBar(),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE2E4E7)),
              ),
            ),
          )),
    );
  }
}
