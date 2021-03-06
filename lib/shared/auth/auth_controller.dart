import 'package:flutter/material.dart';
import 'package:payflow/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  User? _user;

  User get user => _user!;

  void setUser(BuildContext context, User? user) {
    if (user != null) {
      saveUser(user);
      _user = user;
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  Future<void> saveUser(User user) async {
    final instance = await SharedPreferences.getInstance();
    await instance.setString("user", user.toJson());
    return;
  }
  
  Future<void> currentUser(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();
    if(instance.containsKey('user')) {
      final json = instance.get("user") as String;
      setUser(context, User.fromJson(json));
      return;
    } else {
      setUser(context, null);
    }
  }
}
