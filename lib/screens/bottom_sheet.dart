import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  'MCD Underground Parking',
                  style: TextStyle(
                    color: Color.fromARGB(255, 2, 53, 171),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    '13/81,Block 13,Press Colony,Mayapuri,New Delhi',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 0, 41, 188),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(70, 10, 70, 10),
                              child: Column(
                                children: [
                                  Text(
                                    'Base Price',
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 4, 76, 221),
                                    ),
                                  ),
                                  Text(
                                    'Rs 50/hr',
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  'Distance',
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 4, 76, 221),
                                  ),
                                ),
                                Text(
                                  '5 Km',
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(70, 10, 70, 10),
                              child: Column(
                                children: [
                                  Text(
                                    'Capacity',
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 4, 76, 221),
                                    ),
                                  ),
                                  Text(
                                    '500',
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  'Slots Available',
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 4, 76, 221),
                                  ),
                                ),
                                Text(
                                  '300',
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
