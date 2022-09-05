import 'package:flutter/material.dart';
import '../my_profile/edit_profile.dart';
import 'package:google_fonts/google_fonts.dart';
import '../my_profile/edit_profile.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key key}) : super(key: key);
  static const routeName = '/settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  void openBottomSheet(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return EditProfilePage();
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      isScrollControlled: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
<<<<<<< HEAD
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 5,
                  ),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      child: Text(
                        'Edit Profile',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                )),
          ),
          Container(
            width: double.infinity,
            child: Card(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 5,
                  ),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      child: Text(
                        'Account Settings',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                )),
          ),
          Container(
            width: double.infinity,
            child: Card(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 5,
                  ),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      child: Text(
                        'Notification Settings',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                )),
          ),
        ],
=======
      body: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(30),
        child: ElevatedButton(
          onPressed: () => openBottomSheet(context),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Edit Profile',
              ),
              Icon(Icons.edit),
            ],
          ),
        ),
>>>>>>> dbc6f23c364eebba2af8f5fef4c3806f1f453ceb
      ),
    );
  }
}
