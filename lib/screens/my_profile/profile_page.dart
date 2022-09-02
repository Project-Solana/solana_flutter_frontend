import 'package:first_app/screens/Settings/settings_screen.dart';
import 'package:flutter/material.dart';
import './profile_widget.dart';
import './user_preferences.dart';
import './user.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({
    Key key,
    @required this.name,
    @required this.mobileNo,
    @required this.email,
  }) : super(key: key);

  String name;
  String mobileNo;
  String email;

  static const routeName = '/profile-page';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        elevation: 0,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Breezeicons-actions-22-im-user.svg/768px-Breezeicons-actions-22-im-user.svg.png?20160527143724',
            //user.imagePath,
          ),
          const SizedBox(height: 30),
          buildName(user),
          const SizedBox(height: 50),

          //Settings
          Container(
            margin: EdgeInsets.all(30),
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ),
                );
              },
              color: Colors.blue,
              hoverColor: Color.fromARGB(255, 5, 90, 174),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Settings',
                  ),
                  Icon(Icons.settings),
                ],
              ),
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildName(User user) => Column(
        children: <Widget>[
          Text(
            user.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            user.mobile_no,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            user.email,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            user.key,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ],
      );
}
