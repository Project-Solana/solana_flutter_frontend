import '../screens/Transaction%20Details/transaction_details_screen.dart';
import '../screens/my_profile/profile_page.dart';
import 'package:first_app/widgets/home_page_body.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//import './app_drawer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final screens = [
    HomePageBody(),
    TransactionDetails(),
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
          color: Colors.blue,
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
        //drawer: AppDrawer(),
        body: screens[_page],
      ),
    );
  }
}
