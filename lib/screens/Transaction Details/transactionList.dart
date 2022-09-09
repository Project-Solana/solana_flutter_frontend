import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import 'transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: transactions.map((tx) {
              return GlassmorphicContainer(
                width: 300,
                height: 124,
                borderRadius: 2,
                blur: 20,
                linearGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 102, 51, 152).withOpacity(0.2),
                    Color.fromARGB(255, 34, 49, 121).withOpacity(0.2),
                  ],
                  stops: [0.1, 1],
                ),
                borderGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 255, 255, 255),
                    Color.fromARGB(255, 255, 255, 255),
                  ],
                ),
                border: 0.5,
                // margin: EdgeInsets.all(15),
                // padding: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        tx.id.toString(),
                        style: GoogleFonts.openSans(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        tx.entrydate,
                        style: GoogleFonts.openSans(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        tx.entrytime,
                        style: GoogleFonts.openSans(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        tx.exitdate,
                        style: GoogleFonts.openSans(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        tx.exittime,
                        style: GoogleFonts.openSans(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Slots',
                            style: GoogleFonts.openSans(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            tx.slots,
                            style: GoogleFonts.openSans(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
