import 'package:flutter/material.dart';
import './user_preferences.dart';
import './user.dart';
import 'account_widget.dart';

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
      body: ListView(
        children: [
          Container(
            height: 150,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 31, 31, 31),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Row(
              children: [
                buildName(user),
                const SizedBox(
                  width: 60,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Breezeicons-actions-22-im-user.svg/768px-Breezeicons-actions-22-im-user.svg.png?20160527143724',
                  ),
                ),
              ],
            ),
          ),
          AccountWidget(),
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
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            user.mobile_no,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            user.email,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            user.key,
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ],
      );
}
