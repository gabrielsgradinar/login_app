import 'package:flutter/widgets.dart';

class LoginController {
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  String? _login;
  setLogin(String value) => _login = value;

  String? _password;
  setPassword(String value) => _password = value;

  Future<bool> auth() async {
    inLoader.value = true;
    await Future.delayed(const Duration(seconds: 3));
    inLoader.value = false;
    return _login == 'admin' && _password == '123';
  }
}