import 'package:flutter/material.dart';
import 'package:mucs/pages/login/loginPageBody.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: LoginPageBody()),

    );
  }
}
