import 'package:first_app/screens/auth_screen.dart';
import 'package:first_app/screens/my_profile/profile_page.dart';
import './theme.dart';
import 'package:flutter/material.dart';
import './my_profile/edit_profile.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 32, 145, 226),
            ), //BoxDecoration
            child: UserAccountsDrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 32, 145, 226)),
              accountName: Text(
                "Mr. X",
                style: TextStyle(fontSize: 18),
              ),
              accountEmail: Text("xxx123@gmail.com"),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 137, 220, 255),
                child: Text(
                  "X",
                  style: TextStyle(fontSize: 30.0, color: Colors.blue),
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(' My Profile '),
            onTap: () {
              // Navigator.of(context).pushNamed(ProfilePage.routeName);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.assignment_outlined),
            title: const Text(' Transaction Details '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text(' History '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.arrow_forward_ios),
            title: const Text(' Theme '),
            onTap: () {
              //Navigator.of(context).pushNamed(AuthScreen.routeName);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DarkLight(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.workspace_premium),
            title: const Text(' Go Premium '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('LogOut'),
            onTap: () {
              //Navigator.of(context).pushNamed(AuthScreen.routeName);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AuthScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
