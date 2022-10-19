import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
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
      backgroundColor: Colors.transparent,
      body: ListView(
        children: [
          GlassmorphicContainer(
            height: 150,
            width: double.infinity,
            borderRadius: 20,
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
                Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
                Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
              ],
            ),
            border: 1,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildName(user),
                const SizedBox(
                  width: 60,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'profile.png',
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
  Widget buildName(User user) => Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 16, 5, 5),
              child: Text(
                user.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              user.mobile_no,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              user.email,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              user.key,
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
      );
}
