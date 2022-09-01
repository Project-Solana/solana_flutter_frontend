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

  Future<void> _show1() async {
    final TimeOfDay result =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (result != null) {
      setState(() {
        _selectedTime1 = result.format(context);
      });
    }
  }

  Future<void> _show2() async {
    final TimeOfDay result =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (result != null) {
      setState(() {
        _selectedTime2 = result.format(context);
      });
    }
  }

  @override
  void openBottomSheet(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return MyBottomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 25,
      ),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Find Providers near me',
            style: GoogleFonts.ubuntu(
              fontSize: 15,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5, 10, 10, 30),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 0, 41, 188),
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter your current location',
                      labelStyle: GoogleFonts.quicksand(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                RaisedButton(
                  child: Row(
                    children: [
                      Text(
                        'Find Details',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 66, 66, 66),
                        ),
                      ),
                      Icon(Icons.search),
                    ],
                  ),
                  onPressed: () => openBottomSheet(context),
                ),
                //Insert list displaying the names of the nearby providers
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text('Selected Provider'),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Column(
                children: [
                  FlatButton(
                    child: Text(
                      'Choose no. of slots',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 4, 76, 221),
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
                                  labelText: 'Enter no. of slots to be booked',
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
                                      _totalSlots =
                                          int.parse(slotController.text);
                                    });

                                    print(_totalSlots);
                                  },
                                  child: Text('Save'),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text('Done'),
                                ),
                              ],
                            );
                          });
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
                  right: 20,
                ),
                child: Column(
                  children: [
                    Text(
                      'Entry',
                      style: GoogleFonts.ubuntu(
                        fontSize: 10,
                      ),
                    ),
                    FlatButton(
                      child: Text(
                        'Pick Date',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 4, 76, 221),
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
                    FlatButton(
                      child: Text(
                        'Pick Time',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 4, 76, 221),
                        ),
                      ),
                      onPressed: _show1,
                    ),
                    Text(
                      _dateTime1 == null
                          ? 'No date chosen'
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
                  FlatButton(
                    child: Text(
                      'Pick Date',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 4, 76, 221),
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
                  FlatButton(
                    child: Text(
                      'Pick Time',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 4, 76, 221),
                      ),
                    ),
                    onPressed: _show2,
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
          const SizedBox(
            height: 35,
          ),
          Container(
            alignment: Alignment.topRight,
            child: RaisedButton(
              color: Color.fromARGB(255, 4, 76, 221),
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
