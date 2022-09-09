import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Settings/settings_screen.dart';
import 'package:first_app/authentication/auth_screen.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          color: Colors.transparent,
          // margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SettingsScreen(),
                ),
              );
            },
            child: GlassmorphicContainer(
              height: 60,
              width: double.infinity,
              borderRadius: 1,
              blur: 1,
              linearGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 102, 51, 152).withOpacity(0.3),
                  Color.fromARGB(255, 34, 49, 121).withOpacity(0.3),
                ],
                stops: [0.1, 1],
              ),
              borderGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 255, 255, 255),
                ],
              ),
              border: 1,
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                        child: Text(
                          'Settings',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
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
          color: Colors.transparent,
          // margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          child: InkWell(
            onTap: () {},
            child: GlassmorphicContainer(
              height: 60,
              width: double.infinity,
              borderRadius: 1,
              blur: 1,
              linearGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 102, 51, 152).withOpacity(0.3),
                  Color.fromARGB(255, 34, 49, 121).withOpacity(0.3),
                ],
                stops: [0.1, 1],
              ),
              borderGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 255, 255, 255),
                ],
              ),
              border: 1,
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                        child: Text(
                          'Rate Us',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
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
        //             'Rate Us',
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
        //             'Help',
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
          color: Colors.transparent,
          // margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          child: InkWell(
            onTap: () {},
            child: GlassmorphicContainer(
              height: 60,
              width: double.infinity,
              borderRadius: 1,
              blur: 1,
              linearGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 102, 51, 152).withOpacity(0.3),
                  Color.fromARGB(255, 34, 49, 121).withOpacity(0.3),
                ],
                stops: [0.1, 1],
              ),
              borderGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 255, 255, 255),
                ],
              ),
              border: 1,
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                        child: Text(
                          'Help',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Card(
          color: Colors.transparent,
          // margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AuthScreen(),
                ),
              );
            },
            child: GlassmorphicContainer(
              height: 60,
              width: double.infinity,
              borderRadius: 1,
              blur: 1,
              linearGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 102, 51, 152).withOpacity(0.3),
                  Color.fromARGB(255, 34, 49, 121).withOpacity(0.3),
                ],
                stops: [0.1, 1],
              ),
              borderGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 255, 255, 255),
                ],
              ),
              border: 1,
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                        child: Text(
                          'Log Out',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => AuthScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
//         Card(
//           margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
//           child: Padding(
//             padding: EdgeInsets.symmetric(
//               vertical: 10,
//               horizontal: 5,
//             ),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Text(
//                     'Logout',
//                     style: GoogleFonts.poppins(
//                       fontSize: 15,
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.arrow_forward_ios),
//                   onPressed: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (context) => AuthScreen(),
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
      ],
    );
  }
}
