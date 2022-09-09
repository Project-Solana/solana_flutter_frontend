import 'package:first_app/screens/Transaction%20Details/transactionList.dart';
import 'package:flutter/material.dart';
import 'transaction.dart';
import 'package:glassmorphism/glassmorphism.dart';

class TransactionDetailsScreen extends StatelessWidget {
  final List<Transaction> trans = [
    Transaction(
        id: 1001,
        entrydate: '15th sep 2022',
        entrytime: '2:30 pm',
        exitdate: '20th sep 2022',
        exittime: '3:30 pm',
        slots: '2'),
    Transaction(
        id: 1002,
        entrydate: '1st oct 2022',
        entrytime: '4:30 pm',
        exitdate: '3rd oct 2022',
        exittime: '1:30 pm',
        slots: '4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        flexibleSpace: GlassmorphicContainer(
          height: 80,
          width: double.infinity,
          borderRadius: 1,
          blur: 20,
          linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 102, 51, 152),
              Color.fromARGB(255, 34, 49, 121),
            ],
            stops: [0.1, 1],
          ),
          borderGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 121, 83, 170),
              Color.fromARGB(255, 64, 103, 224),
            ],
          ),
          border: 0.5,
        ),
        title: Center(
          child: Text(
            'Transaction Details',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        // leading: BackButton(
        //   color: Colors.black,
        // ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: TransactionList(trans),
    );
  }
}
