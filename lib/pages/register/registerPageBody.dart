import 'package:flutter/material.dart';
import 'package:mucs/pages/register/registerCurve.dart';
import 'package:mucs/pages/register/registerTextFields.dart';

class RegisterPageBody extends StatefulWidget {
  @override
  _RegisterPageBodyState createState() => _RegisterPageBodyState();
}

class _RegisterPageBodyState extends State<RegisterPageBody> {
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
            child: RegisterCurve(context) ,
          ),

          Align(
            alignment: Alignment(0,0.45),
            child: RegisterTextFields(context) ,
          ),
          Align(
            alignment: Alignment(0,-1.2),
            child: RegisterLogo(context) ,
          ),
          Align(
            alignment: Alignment(0,0.9),
            child: RegisterButton(context) ,
          ),
          Align(
            alignment: Alignment(-0.99,-0.9),
            child: BackToLogin(context) ,
          ),
        ],
      ),
    );
  }
}
