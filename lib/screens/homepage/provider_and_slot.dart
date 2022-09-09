import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../payment/payment_screen.dart';
import '../bottom_sheet.dart';

class ProviderAndSlot extends StatefulWidget {
  const ProviderAndSlot({Key key}) : super(key: key);

  @override
  State<ProviderAndSlot> createState() => _ProviderAndSlotState();
}

class _ProviderAndSlotState extends State<ProviderAndSlot> {
  DateTime _dateTime1;
  DateTime _dateTime2;
  int _totalSlots = 0;
  String _selectedTime1;
  String _selectedTime2;
  final slotController = TextEditingController();
  bool login;
  _ProviderAndSlo(bool lol) {
    login = lol;
    setState(() {});
  }

  Future<void> _show1(int nn) async {
    final TimeOfDay result =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (nn == 1) {
      setState(() {
        _selectedTime1 = result.format(context);
      });
    } else if (nn == 2) {
      setState(() {
        _selectedTime2 = result.format(context);
      });
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 15,
      ),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text(
              'Find Providers near me',
              style: GoogleFonts.ubuntu(
                fontSize: 15,
              ),
            ),
          ),
          Container(
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 1,
                    sigmaY: 1,
                  ),
                  child: Container(
                    height: 100,
                    width: 400,
                    margin: EdgeInsets.fromLTRB(5, 10, 10, 10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(47, 52, 52, 52),
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextField(
                            enabled: login,
                            style: TextStyle(
                                decorationColor:
                                    Color.fromARGB(255, 73, 80, 87)),
                            cursorColor: Color.fromARGB(255, 73, 80, 87),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Enter your current location',
                              labelStyle: GoogleFonts.quicksand(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 119,
                          alignment: Alignment.bottomCenter,
                          // decoration: BoxDecoration(
                          //   color: Color.fromARGB(255, 0, 0, 0),
                          //   borderRadius: BorderRadius.circular(16.0),
                          // ),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 0, 0, 0))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Find Details',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                Icon(Icons.search),
                              ],
                            ),
                            onPressed: () => openBottomSheet(context),
                          ),
                        ),

                        //Insert list displaying the names of the nearby providers
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 1.0,
                    sigmaY: 1.0,
                  ),
                  child: Container(
                    height: 150,
                    width: 400,
                    margin: EdgeInsets.fromLTRB(4, 10, 10, 10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(47, 52, 52, 52),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      children: [
                        Text(
                          '\nName of Selected Provider',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                //Text('Selected Provider'),
                                TextButton(
                                  child: Text(
                                    'Choose no. of slots',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          content: TextField(
                                            controller: slotController,
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              labelText:
                                                  'Enter no. of slots to be booked',
                                              labelStyle: GoogleFonts.quicksand(
                                                fontSize: 14,
                                              ),
                                            ),
                                            // onChanged: (val) {
                                            //   int val = int.parse(slotController.text);
                                            //   _totalSlots = val;
                                            // },
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  _totalSlots = int.parse(
                                                      slotController.text);
                                                });

                                                print(_totalSlots);
                                              },
                                              child: Text('Save'),
                                            ),
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              child: Text('Done'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                ),
                                Text(
                                  _totalSlots.toString(),
                                  //!= null ? _totalSlots : 'Select no. of slots',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 10,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Entry',
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 10,
                                    ),
                                  ),
                                  TextButton(
                                    child: Text(
                                      'Choose Date',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    onPressed: () {
                                      showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime.now(),
                                        lastDate: DateTime(2025),
                                      ).then((date1) {
                                        setState(() {
                                          _dateTime1 = date1;
                                        });
                                      });
                                    },
                                  ),
                                  TextButton(
                                    child: Text(
                                      'Choose Time',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    onPressed: () {
                                      _show1(1);
                                    },
                                  ),
                                  Text(
                                    _dateTime1 == null
                                        ? 'No date chossen'
                                        : '${DateFormat.yMMMd().format(_dateTime1)}',
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                  Text(
                                    _selectedTime1 != null
                                        ? _selectedTime1
                                        : 'No time selected!',
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  'Exit',
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 10,
                                  ),
                                ),
                                TextButton(
                                  child: Text(
                                    'Choose Date',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  onPressed: () {
                                    showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime.now(),
                                      lastDate: DateTime(2025),
                                    ).then((date2) {
                                      setState(() {
                                        _dateTime2 = date2;
                                      });
                                    });
                                  },
                                ),
                                TextButton(
                                  child: Text(
                                    'Choose Time',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  onPressed: () {
                                    _show1(2);
                                  },
                                ),
                                Text(
                                  _dateTime2 == null
                                      ? 'No date chosen'
                                      : '${DateFormat.yMMMd().format(_dateTime2)}',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  _selectedTime2 != null
                                      ? _selectedTime2
                                      : 'No time selected!',
                                  style: TextStyle(
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
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 33, 37, 41)),
              ),
              child: Text(
                'Confirm',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PaymentScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
