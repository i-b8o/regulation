import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:regulation/home/home.dart';

class InitAppBAr extends StatelessWidget {
  const InitAppBAr({
    Key? key,
    this.foregroundColor,
  }) : super(key: key);
  final Color? foregroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
            // context.read<HomeBloc>().add(SearchTextFieldActivatedEvent());
          },
          icon: Icon(
            Icons.menu,
            color: foregroundColor,
          ),
        ),
        IconButton(
          onPressed: () {
            context.read<HomeBloc>().add(SearchTextFieldActivatedEvent());
          },
          icon: Icon(
            Icons.search,
            color: foregroundColor,
          ),
        ),
      ],
    );
    // return AppBar(
    //   elevation: 0.0,
    //   actions: [
    //     Padding(
    //       padding: const EdgeInsets.only(bottom: 18.0),
    //       child: IconButton(
    //         onPressed: () {
    //           context.read<HomeBloc>().add(SearchTextFieldActivatedEvent());
    //         },
    //         icon: Icon(Icons.search),
    //       ),
    //     ),
    //   ],
    // );
  }
}
