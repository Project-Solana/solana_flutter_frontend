import 'package:google_fonts/google_fonts.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import '../Transaction%20Details/transaction_details_screen.dart';
import '../my_profile/profile_page.dart';
import './home_page_body.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../bottom_sheet.dart';

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
      // home: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   decoration: BoxDecoration(color: Color.fromARGB(197, 244, 242, 242)),
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     fit: BoxFit.fill,
      //     image: AssetImage("assets/background 1.jpg"),
      //   ),
      // ),
      home: Scaffold(
        //extendBodyBehindAppBar: true,

        // appBar: PreferredSize(
        //   child: AppBar(
        //     backgroundColor: Color.fromARGB(197, 244, 242, 242),
        //     title: Text(
        //       'Rumaal',
        //       style: GoogleFonts.caveat(
        //         fontSize: 40,
        //         foreground: Paint()
        //           ..style = PaintingStyle.stroke
        //           ..strokeWidth = 1
        //           ..color = Color.fromARGB(255, 255, 255, 255),
        //         letterSpacing: 0,
        //         wordSpacing: 17,
        //         shadows: <Shadow>[
        //           Shadow(
        //             offset: Offset(2, 2),
        //             blurRadius: 5.0,
        //             color: Color.fromARGB(255, 6, 14, 150),
        //           ),
        //         ],
        //       ),
        //     ),
        //     centerTitle: true,
        //     actions: [
        //       IconButton(
        //         icon: Icon(Icons.location_pin),
        //         onPressed: () {
        //           getCurrentPosition();
        //         },
        //       ),
        //       IconButton(
        //         icon: Icon(Icons.search),
        //         onPressed: () => openBottomSheet(context),
        //       )
        //     ],
        //     elevation: 0.0,
        //   ),
        //   preferredSize: Size(
        //     double.infinity,
        //     56.0,
        //   ),
        // ),

        

        //Curved Navigation Bar
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color.fromARGB(197, 244, 242, 242),
          buttonBackgroundColor: Color.fromARGB(47, 242, 209, 157),
          color: Color.fromARGB(157, 4, 162, 125),
          key: _bottomNavigationKey,
          animationDuration: Duration(milliseconds: 300),
          items: <Widget>[
            Icon(
              Icons.home,
              size: 25,
              color: Colors.black,
            ),
            Icon(
              Icons.assignment_outlined,
              size: 25,
              color: Colors.black,
            ),
            Icon(
              Icons.person,
              size: 25,
              color: Colors.black,
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
    );
  }
}

void openBottomSheet(BuildContext ctx) {
  showModalBottomSheet(
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    context: ctx,
    builder: (ctx) {
      return const MyBottomSheet();
    },
  );
}

void getCurrentPosition() async {
  //Permission
  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied ||
      permission == LocationPermission.deniedForever) {
    print("Permission Not Given");
    LocationPermission asked = await Geolocator.requestPermission();
  } else {
    Position currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print("Lattitutde: " + currentPosition.latitude.toString());
    print("Longitude: " + currentPosition.longitude.toString());
  }
}
