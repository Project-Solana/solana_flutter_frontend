import 'package:first_app/widgets/provider_and_slot.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                bottom: 10,
              ),
              child: Text(
                'A FREE ONLINE BOOKING SYSTEM FOR PARKING LOTS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 2, 53, 171),
                ),
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/car_parking.jpg',
                  height: 150,
                  width: 200,
                ),
                Container(
                  width: 100,
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Park your vehicle with ParkIT',
                    style: GoogleFonts.caveat(
                      color: Color.fromARGB(255, 58, 58, 58),
                      fontSize: 20,
                    ),
                    // TextStyle(
                    //   fontSize: 15,
                    //   color: Color.fromARGB(255, 54, 54, 54),
                    // ),
                  ),
                ),
              ],
            ),
            ProviderAndSlot(),
          ],
        ),
      ),
    );
  }
}
