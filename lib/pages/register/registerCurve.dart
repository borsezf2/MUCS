import 'package:flutter/material.dart';

Widget RegisterCurve(context){
  return ClipPath(
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.purple[200],Colors.purple[400],Colors.purple[600],Colors.purple[800]],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
        ),
      ),
      height: MediaQuery.of(context).size.height/3,
      width: double.infinity,
    ),
    clipper: CurvePath(),
  );
}

class CurvePath extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();

    path.lineTo(0, size.height-70);
    path.quadraticBezierTo(size.width/4, size.height, size.width/2, size.height);
    path.quadraticBezierTo(size.width/1.3 , size.height, size.width, size.height-70);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}

Widget RegisterLogo(context){
  return Container(
    height: 400,
    width: 400,
//    color: Colors.red,
    child: Center(
      child: Text("  Multiple\nCard Stack",
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40) ,),
    ),
  );
}