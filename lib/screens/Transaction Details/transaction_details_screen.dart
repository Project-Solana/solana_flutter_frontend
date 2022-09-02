import 'package:first_app/screens/Transaction%20Details/transactionList.dart';
import 'package:flutter/material.dart';
import 'transaction.dart';

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
      appBar: AppBar(
        title: Center(
          child: Text(
            'Transaction Details',
            style: TextStyle(
              color: Colors.black,
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
