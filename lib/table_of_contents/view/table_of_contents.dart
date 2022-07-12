import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class TableOfContentsPage extends StatelessWidget {
  const TableOfContentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TableOfContentsView();
  }
}

class TableOfContentsView extends StatelessWidget {
  const TableOfContentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
              ),
              child: Container(
                child: TableOfContentsAppBar(),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFE2E4E7)),
                ),
              ),
            )),
        drawer: const NavigationDrawer(),
        body: Center(
          child: Text("RFF"),
        ));
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );
  Widget buildMenuItems(BuildContext context) => Column(
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined, color: Colors.black),
            title: const Text('Домой'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined, color: Colors.black),
            title: const Text('Домой'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined, color: Colors.black),
            title: const Text('Домой'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined, color: Colors.black),
            title: const Text('Домой'),
            onTap: () {},
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [buildHeader(context), buildMenuItems(context)],
      )),
    );
  }
}
