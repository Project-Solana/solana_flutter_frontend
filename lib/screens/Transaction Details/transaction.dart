import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Transaction {
  final int id;
  final String entrydate;
  final String entrytime;
  final String exitdate;
  final String exittime;
  final String slots;

  Transaction({
    @required this.id,
    @required this.entrydate,
    @required this.entrytime,
    @required this.exitdate,
    @required this.exittime,
    @required this.slots,
  });
}
