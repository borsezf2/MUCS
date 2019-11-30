import 'package:flutter/material.dart';
import 'package:mucs/pages/login/loginCurve.dart';
import 'package:mucs/pages/login/loginTextFields.dart';

class LoginPageBody extends StatefulWidget {
  @override
  _LoginPageBodyState createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[

          Align(
            alignment: Alignment.topCenter,
            child: LoginCurve(context) ,
          ),
          Align(
            alignment: Alignment(0,0.56),
            child: LoginTextFields(context) ,
          ),
          Align(
            alignment: Alignment(0,-0.5),
            child: Logo(context) ,
          ),
          Align(
            alignment: Alignment(0,0.82),
            child: LogInButton(context) ,
          ),
          Align(
            alignment: Alignment(0,0.95),
            child: RegisterText(context) ,
          ),
        ],
      ),
    );
  }
}
