import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Settings/settings_screen.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({Key key}) : super(key: key);

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
                    'Settings',
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
        // Card(
        //   margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        //   child: Padding(
        //     padding: EdgeInsets.symmetric(
        //       vertical: 10,
        //       horizontal: 5,
        //     ),
        //     child: Row(
        //       children: [
        //         Expanded(
        //           child: Text(
        //             'Notifications',
        //             style: GoogleFonts.poppins(
        //               fontSize: 15,
        //             ),
        //           ),
        //         ),
        //         IconButton(
        //           icon: Icon(Icons.arrow_forward_ios),
        //           onPressed: () {},
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
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
                    'Rate Us',
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
                    'Help',
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
                    'Logout',
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
