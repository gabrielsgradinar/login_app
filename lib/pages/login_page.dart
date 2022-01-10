import 'package:flutter/material.dart';
import 'package:login/components/login/custom_login_button_component.dart';
import 'package:login/controllers/login_controller.dart';
import 'package:login/widget/custom_text_field_widget.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.people, size: MediaQuery.of(context).size.height * 0.3),
            CustomTextFiedlWidget(
              onChanged: _controller.setLogin,
              label: 'Login',
            ),
            CustomTextFiedlWidget(
              onChanged: _controller.setPassword,
              label: 'Senha',
              obscureText: true,
            ),
            SizedBox(height: 15),
            CustomLoginButtonComponent(
              loginController: _controller,
            ),
          ],
        ),
      ),
    );
  }
}
