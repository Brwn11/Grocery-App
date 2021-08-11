import 'package:burger_app/categories.dart';
import 'package:burger_app/hambergers_list.dart';
import 'package:burger_app/header.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Hamburger(),
      theme: ThemeData(
        cardColor: Colors.teal,
        appBarTheme: AppBarTheme(
          color: Colors.teal,
          centerTitle: true,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.orange,
        ),
        bottomAppBarColor: Colors.teal,
      ),
    );
  }
}

class Hamburger extends StatefulWidget {
  Hamburger({Key? key}) : super(key: key);

  @override
  _HamburgerState createState() => _HamburgerState();
}

class _HamburgerState extends State<Hamburger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text(
              "BROWN",
            ),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  ;
                },
              )
            ],
          ),
          Header(),
          Categories(),
          HambergersList(row: 1),
          HambergersList(row: 2),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Text(
                  "Hamburger",
                  style: TextStyle(
                    fontSize: 200,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ;
        },
        child: Icon(
          Icons.home,
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(35),
        ),
        child: Container(
          color: Colors.black38,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              children: [
                Spacer(),
                IconButton(
                  onPressed: () {
                    ;
                  },
                  icon: Icon(
                    Icons.turned_in_not_rounded,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Spacer(),
                IconButton(
                  onPressed: () {
                    ;
                  },
                  icon: Icon(
                    Icons.add_alert_rounded,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
