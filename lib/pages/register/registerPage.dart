import 'package:flutter/material.dart';
import 'package:mucs/pages/register/registerPageBody.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: RegisterPageBody()),

    );
  }
}
