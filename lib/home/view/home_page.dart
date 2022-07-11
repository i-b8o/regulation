import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:regulation/home/home.dart';

import 'package:regulation/two/two.dart';

import '../../one/one.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
                child: HomePageAppBar(),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFE2E4E7)),
                ),
              ),
            )),
        drawer: const NavigationDrawer(),
        body: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(size.width * 0.1),
          mainAxisSpacing: size.width * 0.1,
          crossAxisSpacing: size.width * 0.1,
          children: getGridViewChildren(),
        ));
  }

  List<Widget> getGridViewChildren() {
    return [
      Image.asset(
        'assets/images/icon.png',
      ),
      Image.asset(
        'assets/images/icon.png',
      ),
      Image.asset(
        'assets/images/icon.png',
      ),
      Image.asset(
        'assets/images/icon.png',
      ),
      Image.asset(
        'assets/images/icon.png',
      ),
      Image.asset(
        'assets/images/icon.png',
      ),
      Image.asset(
        'assets/images/icon.png',
      ),
      Image.asset(
        'assets/images/icon.png',
      ),
      Image.asset(
        'assets/images/icon.png',
      ),
      Image.asset(
        'assets/images/icon.png',
      ),
    ];
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
