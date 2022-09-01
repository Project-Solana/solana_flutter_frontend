import '../Transaction%20Details/transaction_details_screen.dart';
import '../my_profile/profile_page.dart';
import './home_page_body.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final screens = [
    HomePageBody(),
    TransactionDetailsScreen(),
    ProfilePage(),
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 61, 182, 230),
        ),

        //Curved Navigation Bar
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: Color.fromARGB(255, 61, 182, 230),
          key: _bottomNavigationKey,
          animationDuration: Duration(milliseconds: 300),
          items: <Widget>[
            Icon(Icons.home, size: 25),
            Icon(Icons.assignment_outlined, size: 25),
            Icon(Icons.person, size: 25),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),

        //Navigating to different screens through curved navigation barS
        body: screens[_page],
      ),
    );
  }
}
