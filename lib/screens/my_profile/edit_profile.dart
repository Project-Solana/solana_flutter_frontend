import 'package:first_app/screens/my_profile/profile_widget.dart';
import 'package:flutter/material.dart';
import './user_preferences.dart';
import './user.dart';
import './text_field_widget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final user = UserPreferences.myUser;

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
        padding: EdgeInsets.symmetric(horizontal: 32),
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            isEdit: true,
            onClicked: () async {},
          ),
          const SizedBox(
            height: 24,
          ),
          TextFieldWidget(
            label: 'Full Name',
            text: user.name,
            onChanged: (name) {},
          ),
          TextFieldWidget(
            label: 'Mobile no.',
            text: user.mobile_no,
            onChanged: (name) {},
          ),
          TextFieldWidget(
            label: 'Email',
            text: user.email,
            onChanged: (name) {},
          ),
        ],
      ),
    );
  }
}
