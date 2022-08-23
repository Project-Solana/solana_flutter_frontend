import 'package:flutter/material.dart';
import 'bottom_sheet.dart';
import './app_drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  void openSideBar(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return SideBar();
      },
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => openSideBar(context),
        ),
        appBar: AppBar(
          title: Container(
            child: TextField(
              decoration: InputDecoration(labelText: 'Search'),
            ),
          ),
          // title: Center(
          //   child: Text(
          //     'ParkIt',
          //     style: TextStyle(
          //         fontSize: 30,
          //         fontWeight: FontWeight.bold,
          //         color: Color.fromARGB(255, 43, 1, 39)),
          //   ),
          // ),
          backgroundColor: Color.fromARGB(255, 61, 182, 230),
          actions: <Widget>[
            IconButton(
              // alignment: Alignment.topLeft,
              hoverColor: Color.fromARGB(255, 27, 102, 164),
              onPressed: () {},
              icon: Icon(Icons.toc),
            ),
          ],
        ),
        drawer: AppDrawer(),
      ),
    );
  }
}
