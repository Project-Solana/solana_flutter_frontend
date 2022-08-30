import 'package:first_app/payment.dart/payment_screen.dart';

import './screens/theme.dart';

import './screens/my_profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/main_screen.dart';
import './screens/auth_screen.dart';
import 'Providers/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
      ],
      child: MaterialApp(
        home: MainScreen(), //AuthScreen(),
        routes: {
          '/main-screen': (context) => MainScreen(),
          ProfilePage.routeName: (context) => ProfilePage(),
          AuthScreen.routeName: (context) => AuthScreen(),
          PaymentScreen.routeName: (context) => PaymentScreen(),
          DarkLight.routeName: (context) => DarkLight(),
        },
      ),
    );
  }
}
