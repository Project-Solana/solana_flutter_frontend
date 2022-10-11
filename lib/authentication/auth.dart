import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  String _token;
  DateTime _expiryDate;
  String _userId;

  Future<void> signup(
      String name, String mobile_no, String email, String password) async {
    final url = Uri.parse(
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyDdp3PEnQxjmiu-4dhHBfnky0GV4vmyU_g');
    final response = await http.post(
      url,
      body: json.encode(
        {
          'name': name,
          'mobile_no': mobile_no,
          'email': email,
          'password': password,
          'returnSecureToken': true,
        },
      ),
    );
  }
}
