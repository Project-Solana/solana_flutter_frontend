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
        },
      ),
    );
  }
}
