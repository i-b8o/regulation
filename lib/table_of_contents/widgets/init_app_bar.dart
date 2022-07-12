import 'package:flutter/material.dart';

class InitAppBAr extends StatelessWidget {
  const InitAppBAr({
    Key? key,
    this.foregroundColor,
    required this.title,
  }) : super(key: key);
  final Color? foregroundColor;
  final String title;
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
        Text(title),
        IconButton(
          onPressed: () {
            // context
            //     .read<TableOfContentsBloc>()
            //     .add(EventTableOfContentsSearchTextFieldActivated());
          },
          icon: Icon(
            Icons.search,
            color: foregroundColor,
          ),
        ),
      ],
    );
  }
}
