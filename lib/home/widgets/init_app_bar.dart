import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:regulation/home/home.dart';

class InitAppBAr extends StatelessWidget {
  const InitAppBAr({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      actions: [
        IconButton(
          onPressed: () {
            context.read<HomeBloc>().add(SearchTextFieldActivatedEvent());
          },
          icon: Icon(Icons.search),
        ),
      ],
    );
  }
}
