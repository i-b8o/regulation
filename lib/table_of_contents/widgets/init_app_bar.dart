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
        Text(title,
            style: TextStyle(
                color: Color(0XFF3B4C61),
                fontWeight: FontWeight.bold,
                fontSize: 16.0)),
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
