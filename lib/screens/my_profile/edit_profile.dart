import 'package:first_app/screens/my_profile/profile_widget.dart';
import 'package:flutter/material.dart';
import './user_preferences.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 32),
        physics: const BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: UserPreferences.myUser.imagePath,
            isEdit: true,
            onClicked: () async {},
          ),
          const SizedBox(
            height: 24,
          ),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              labelText: 'Name',
              labelStyle: GoogleFonts.quicksand(
                fontSize: 14,
              ),
            ),
            onChanged: (val) {
              val = nameController.text;
              name = val;
            },
          ),
          TextField(
            controller: mobileNoController,
            decoration: InputDecoration(
              labelText: 'Mobile Number',
              labelStyle: GoogleFonts.quicksand(
                fontSize: 14,
              ),
            ),
            onChanged: (val) {
              val = mobileNoController.text;
              mobileNo = val;
            },
          ),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: GoogleFonts.quicksand(
                fontSize: 14,
              ),
            ),
            onChanged: (val) {
              val = emailController.text;
              email = val;
            },
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                overlayColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered))
                    return Color.fromARGB(255, 5, 90, 174);
                  return null; // Defer to the widget's default.
                }), //Overlay Color
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)))),
            child: const Text(
              'Done',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
