import 'package:first_app/screens/Settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountsSetting extends StatelessWidget {
  const AccountsSetting({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 5,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Change Email',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SettingsScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 5,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Change Password',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 5,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Delete Account',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        
      ],
    );
  }
}
