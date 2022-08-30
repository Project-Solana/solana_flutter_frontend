import 'package:first_app/widgets/home_page_body.dart';
import 'package:flutter/material.dart';
//import 'bottom_sheet.dart';
import './app_drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  // @override
  // void openBottomSheet(BuildContext ctx) {
  //   showModalBottomSheet(
  //     context: ctx,
  //     builder: (_) {
  //       return SideBar();
  //     },
  //   );
  // }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.add),
        //   onPressed: () => openBottomSheet(context),
        // ),
        appBar: AppBar(
          // title: Container(
          //   child: TextField(
          //     decoration: InputDecoration(labelText: 'Search'),
          //   ),
          // ),
          backgroundColor: Color.fromARGB(255, 61, 182, 230),
        ),
        drawer: AppDrawer(),
        body: SingleChildScrollView(child: HomePageBody()),
      ),
    );
  }
}
