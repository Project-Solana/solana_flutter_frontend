import 'package:flutter/material.dart';
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
              return Container(
                width: 300,
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 43, 43, 43)),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      tx.id.toString(),
                      style: GoogleFonts.ubuntu(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      tx.entrydate,
                      style: GoogleFonts.ubuntu(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      tx.entrytime,
                      style: GoogleFonts.ubuntu(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      tx.exitdate,
                      style: GoogleFonts.ubuntu(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      tx.exittime,
                      style: GoogleFonts.ubuntu(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
