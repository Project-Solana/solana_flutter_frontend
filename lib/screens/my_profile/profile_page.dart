import 'package:first_app/screens/my_profile/edit_profile.dart';
import 'package:flutter/material.dart';
import './profile_widget.dart';
import './user_preferences.dart';
import './user.dart';
import './edit_profile.dart';

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
  String name = UserPreferences.myUser.name;
  String mobileNo = UserPreferences.myUser.mobile_no;
  String email = UserPreferences.myUser.email;
  final nameController = TextEditingController();
  final mobileNoController = TextEditingController();
  final emailController = TextEditingController();

  void resetProfile() {
    setState(() {
      name = nameController.text;
      mobileNo = mobileNoController.text;
      email = emailController.text;
    });
  }

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
        children: <Widget>[
          Text(
            //user.name,
            nameController.text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            //user.mobile_no,
            mobileNoController.text,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            //user.email,
            emailController.text,
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
