import 'package:flutter/material.dart';
import 'package:mucs/pages/register/registerPage.dart';

Widget LoginTextFields(context)
{
  return Container(
    height: MediaQuery.of(context).size.height/5.5,
    padding: EdgeInsets.only(left: 50,right: 50),
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Material(
          color: Colors.transparent,
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "UserName",
                  labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.deepPurple),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.purple),
                  )
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Material(
          color: Colors.transparent,
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Password",
                labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.purple),
                )
              ),
              obscureText: true,
            ),
          ),
        )
      ],
    ),
  );
}


Widget Logo(context){
  return Container(
    height: 400,
    width: 400,
//    color: Colors.red,
    child: Center(
      child: Text("MU-CS",
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 80) ,),
    ),
  );
}

Widget LogInButton(context){
  return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

  elevation: 5,
    child: Container(
      height: MediaQuery.of(context).size.height/15,
      width: MediaQuery.of(context).size.width/1.37,
      decoration: ShapeDecoration(
//        color: Colors.purple,
          gradient: LinearGradient(
              colors: [Colors.purple[400],Colors.purple[600],Colors.purple[800],Colors.purple[900]],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: RaisedButton(
        elevation: 0,
        color: Colors.transparent,
          splashColor: Colors.yellow,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Text("LOG-IN",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
          onPressed: (){print("login tap");}
          ),
    ),
  );
}


Widget RegisterText(context){
  return InkWell(
    splashColor: Colors.purple,
    borderRadius: BorderRadius.circular(30),
    onTap: (){
      print("register tapped");
      Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
      },
    child: Container(
//      color: Colors.blue,
      height: 30,
      width: 70,
      child: Center(
        child: Text("Register"),
      ),
    ),
  );
}