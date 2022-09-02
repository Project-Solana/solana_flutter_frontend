import './screens/Transaction Details/transaction_details_screen.dart';
import './screens/payment/payment_screen.dart';
import './screens/theme.dart';
import './screens/my_profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/homepage/home_page.dart';

import 'screens/Settings/settings_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(), //AuthScreen(),
      routes: {
        HomePage.routema: (context) => HomePage(),
        SettingsScreen.routebase: (ctx) => SettingsScreen(),
        ProfilePage.routeName: (context) => ProfilePage(),
        PaymentScreen.routeName: (context) => PaymentScreen(),
        DarkLight.routeName: (context) => DarkLight(),
      },
    );
  }
}
