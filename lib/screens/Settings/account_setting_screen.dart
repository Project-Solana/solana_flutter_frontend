import 'package:first_app/screens/Settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AccountsSetting extends StatelessWidget {
  const AccountsSetting({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        // Container(
        //       color: Color.fromARGB(246, 253, 253, 253),
        //       height: 15,
        //       width: double.infinity,
              // child: Image.asset(
              //   'assets/car_parking.jpg',
              //   height: 150,
              //   width: 800,
              // ),
            //),
          Stack(
              children: [
                Container(
                  color: Color.fromARGB(225, 252, 255, 249),
                  height: 25,

                
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     fit: BoxFit.cover,
                  //     image: NetworkImage(
                  //       "https://images.unsplash.com/photo-1537734796389-e1fc293cf856?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80",
                  //     ),
                  //   ),
                  // ),
                
                ),
                // Positioned(
                //   bottom: 0,
                //   left: 0,
                //   right: 0,
                //   child: ClipRect(
                //     child: BackdropFilter(
                //        child: Container(
                //         // the size where the blurring starts
                //         height: MediaQuery.of(context).size.height * 0.4,
                //         color: Colors.transparent,
                //       ),
                //     ),
                //   ),
                // ),
                Positioned( 
                    child: TextButton(
                     child: Text(
                      'Account Settings',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.black,
                        // wordSpacing: 17,
                      ), 
                    ),
                    onPressed: () {
                     
                    },
                  ),
                ),
              ],
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
                    'Change Email',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {

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

// class _AccountsSettingState extends State<AccountsSetting> {
//   @override
//   void openBottomSheet(BuildContext ctx) {
//     showModalBottomSheet(
//       context: ctx,
//       builder: (_) {
//         return SettingsScreen();
//       },
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//       ),
//       isScrollControlled: true,
//     );
//   }
// }