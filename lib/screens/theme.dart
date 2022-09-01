import 'package:flutter/material.dart';

final _lightTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: TextTheme(
    bodyText2: TextStyle(
      color: Colors.white,
    ),
  ),
);

final _darkTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: TextTheme(
    bodyText2: TextStyle(
      color: Colors.black,
    ),
  ),
);

class DarkLight extends StatefulWidget {
  const DarkLight({Key key}) : super(key: key);
  static const routeName = '/theme-page';

  @override
  State<DarkLight> createState() => _DarkLightState();
}

class _DarkLightState extends State<DarkLight> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      backgroundColor: _switchValue ? Colors.white : Colors.black,
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Change Theme',
              style: TextStyle(
                fontSize: 30,
                color: _switchValue ? Colors.black : Colors.white,
              ),
            ),
            Switch(
              value: _switchValue,
              // activeColor: Colors.red,
              // activeTrackColor: Colors.pink,
              onChanged: (newValue) {
                setState(
                  () {
                    _switchValue = newValue;
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
