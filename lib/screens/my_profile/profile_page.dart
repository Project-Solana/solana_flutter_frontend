import 'package:first_app/screens/my_profile/edit_profile.dart';
import 'package:flutter/material.dart';
import './profile_widget.dart';
import './user_preferences.dart';
import './user.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);
  static const routeName = '/profile-page';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final user = UserPreferences.myUser;
  @override
  void openBottomSheet(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return EditProfilePage();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
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
          Container(
            margin: EdgeInsets.all(30),
            child: RaisedButton(
              onPressed: () => openBottomSheet(context),
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => EditProfilePage(),
              //   ),
              // );

              color: Colors.blue,
              hoverColor: Color.fromARGB(255, 5, 90, 174),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Edit Profile',
                  ),
                  Icon(Icons.edit),
                ],
              ),
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
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
