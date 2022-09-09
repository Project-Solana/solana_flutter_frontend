import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
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
      backgroundColor: Color.fromARGB(255, 139, 115, 189),
      appBar: AppBar(
        flexibleSpace: GlassmorphicContainer(
          height: 80,
          width: double.infinity,
          borderRadius: 1,
          blur: 20,
          linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 34, 49, 121),
              Color.fromARGB(255, 102, 51, 152),
            ],
            stops: [0.1, 1],
          ),
          borderGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 121, 83, 170),
              Color.fromARGB(255, 64, 103, 224),
            ],
          ),
          border: 0.5,
        ),
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Card(
            color: Colors.transparent,
            // margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
            child: InkWell(
              onTap: () {
                openBottomSheet(context);
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
                    Color.fromARGB(255, 34, 49, 121).withOpacity(0.3),
                    Color.fromARGB(255, 102, 51, 152).withOpacity(0.3),
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
                            'Edit Profile',
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
                          openBottomSheet(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Container(
          //   width: double.infinity,
          //   child: Card(
          //       margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          //       child: Padding(
          //         padding: EdgeInsets.symmetric(
          //           vertical: 10,
          //           horizontal: 5,
          //         ),
          //         child: Container(
          //           alignment: Alignment.centerLeft,
          //           child: TextButton(
          //             child: Text(
          //               'Edit Profile',
          //               style: GoogleFonts.poppins(
          //                 fontSize: 15,
          //                 color: Colors.black,
          //               ),
          //             ),
          //             onPressed: () {
          //               openBottomSheet(context);
          //             },
          //           ),
          //         ),
          //       )),
          // ),
          Card(
            color: Colors.transparent,
            // margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AccountsSetting(),
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
                    Color.fromARGB(255, 34, 49, 121).withOpacity(0.3),
                    Color.fromARGB(255, 102, 51, 152).withOpacity(0.3),
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
                            'Account Settings',
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
                              builder: (context) => AccountsSetting(),
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
          // Container(
          //   width: double.infinity,
          //   child: Card(
          //       margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          //       child: Padding(
          //         padding: EdgeInsets.symmetric(
          //           vertical: 10,
          //           horizontal: 5,
          //         ),
          //         child: Container(
          //           alignment: Alignment.centerLeft,
          //           child: TextButton(
          //             child: Text(
          //               'Account Settings',
          //               style: GoogleFonts.poppins(
          //                 fontSize: 15,
          //                 color: Colors.black,
          //               ),
          //             ),
          //             onPressed: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) => AccountsSetting(),
          //   ),
          //               );
          //             },
          //           ),
          //         ),
          //       )),
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
                    Color.fromARGB(255, 34, 49, 121).withOpacity(0.3),
                    Color.fromARGB(255, 102, 51, 152).withOpacity(0.3),
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
                            'Notification Settings',
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
          // Container(
          //   width: double.infinity,
          //   child: Card(
          //     margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          //     child: Padding(
          //       padding: EdgeInsets.symmetric(
          //         vertical: 10,
          //         horizontal: 5,
          //       ),
          //       child: Container(
          //         alignment: Alignment.centerLeft,
          //         child: TextButton(
          //           child: Text(
          //             'Notification Settings',
          //             style: GoogleFonts.poppins(
          //               fontSize: 15,
          //               color: Colors.black,
          //             ),
          //           ),
          //           onPressed: () {},
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
