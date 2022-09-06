import 'package:flutter/material.dart';
import '../my_profile/edit_profile.dart';
import 'package:google_fonts/google_fonts.dart';
import '../my_profile/edit_profile.dart';
import '../Settings/account_setting_screen.dart';

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
                      onPressed: () {
                        openBottomSheet(context);
                      },
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
                      onPressed: () {
                        Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AccountsSetting(),
                      ),
                    );
                      },
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
      ),
    );
  }
}
