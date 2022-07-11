import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(),
      elevation: 0.0,
      actions: [
        IconButton(
            onPressed: () {
              context.read<HomeBloc>().add(HomeInitialEvent());
            },
            icon: Icon(
              Icons.arrow_back,
            )),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: TextField(
              style: TextStyle(
                fontSize: 12.0,
              ),
              decoration: InputDecoration(
                hintText: "Поиск",
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
      ],
    );
  }
}
