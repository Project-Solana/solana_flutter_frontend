import 'package:google_fonts/google_fonts.dart';

import 'dart:ui';
import 'package:flutter/material.dart';
import '../Transaction%20Details/transaction_details_screen.dart';
import '../my_profile/profile_page.dart';
import './home_page_body.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  static const routeName = '/home-page';
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
      home: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/background 1.jpg"),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: AppBar(
                  backgroundColor: Colors.black.withOpacity(0.2),
                  title: Text(
                    'Park It',
                    style: GoogleFonts.pinyonScript(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 40,
                        letterSpacing: 0,
                        wordSpacing: 17),
                  ),
                  centerTitle: true,
                  leading: Icon(Icons.chevron_left),
                  elevation: 0.0,
                ),
              ),
            ),
            preferredSize: Size(
              double.infinity,
              56.0,
            ),
          ),

          //Curved Navigation Bar
          extendBody: true,
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            color: Color.fromARGB(64, 52, 58, 64),
            key: _bottomNavigationKey,
            animationDuration: Duration(milliseconds: 300),
            items: <Widget>[
              Icon(
                Icons.home,
                size: 25,
                color: Colors.white,
              ),
              Icon(
                Icons.assignment_outlined,
                size: 25,
                color: Colors.white,
              ),
              Icon(
                Icons.person,
                size: 25,
                color: Colors.white,
              ),
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
      ),
    );
  }
}
