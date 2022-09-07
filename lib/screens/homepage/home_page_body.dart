import 'dart:ui';

import './provider_and_slot.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            // Container(
            //   color: Color.fromARGB(163, 226, 248, 203),
            //   height: 150,
            //   width: double.infinity,
            //   child: Image.asset(
            //     'assets/car_parking.jpg',
            //     height: 150,
            //     width: 800,
            //   ),
            // ),

            Stack(
              children: [
                Container(
                  color: Color.fromARGB(163, 226, 248, 203),
                  height: 200,

                  child: Image.asset(
                    'assets/car_parking.jpg',
                    height: 150,
                    width: 800,
                  ),
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     fit: BoxFit.cover,
                  //     image: NetworkImage(
                  //       "https://images.unsplash.com/photo-1537734796389-e1fc293cf856?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80",
                  //     ),
                  //   ),
                  // ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                      child: Container(
                        // the size where the blurring starts
                        height: MediaQuery.of(context).size.height * 0.4,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Center(
                    child: Text(
                      'Rumaal',
                      style: GoogleFonts.caveat(
                        fontSize: 40,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1
                          ..color = Color.fromARGB(255, 255, 255, 255),
                        letterSpacing: 0,
                        wordSpacing: 17,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(2, 2),
                            blurRadius: 5.0,
                            color: Color.fromARGB(255, 6, 14, 150),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Image.asset(
            //       'assets/car_parking.jpg',
            //       height: 150,
            //       width: 200,
            //     ),
            //     Container(
            //       width: 100,
            //       margin: EdgeInsets.only(left: 20),
            //       child: Text(
            //         'Park your vehicle with ParkIT',
            //         style: GoogleFonts.caveat(
            //           color: Color.fromARGB(255, 0, 0, 0),
            //           fontSize: 20,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            ProviderAndSlot(),
          ],
        ),
      ),
    );
  }
}
