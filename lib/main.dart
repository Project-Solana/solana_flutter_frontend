import './screens/Transaction Details/transaction_details_screen.dart';
import './screens/payment/payment_screen.dart';
import './screens/theme.dart';
import './screens/my_profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/homepage/home_page.dart';
import 'authentication/auth_screen.dart';
import 'authentication/auth.dart';

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
        home: HomePage(), //AuthScreen(),
        routes: {
          '/home-page': (context) => HomePage(),
          ProfilePage.routeName: (context) => ProfilePage(),
          AuthScreen.routeName: (context) => AuthScreen(),
          PaymentScreen.routeName: (context) => PaymentScreen(),
          DarkLight.routeName: (context) => DarkLight(),
        },
      ),
    );
  }
}
