import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TransactionDetailsScreen extends StatelessWidget {
  const TransactionDetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Transaction Details',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        // leading: BackButton(
        //   color: Colors.black,
        // ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
