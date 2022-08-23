import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text('Text1'),
              automaticallyImplyLeading: true,
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'Text2',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'Text3',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'Text4',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
