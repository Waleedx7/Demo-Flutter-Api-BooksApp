import 'package:books_app/services/auth_services.dart';
import 'package:flutter/material.dart';
import '../models/users.dart';

class AuthProvider extends ChangeNotifier {
  String token = "";
  late User user;

  void signup({required User user}) async {
    try {
      final token_signup = await AuthServices().signup(user: user);
      print("Token: $token_signup");
    } catch (e) {
      // handle error
    }
  }

  void signin({required User user}) async {
    token = await AuthServices().signin(user: user);
    print(token);
  }
}
