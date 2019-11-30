import 'package:flutter/material.dart';

Widget RegisterTextFields(context)
{
  return Container(
    height: MediaQuery.of(context).size.height/2,
    padding: EdgeInsets.only(left: 50,right: 50),
//    color: Colors.black12,
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
                  labelText: "Name",
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
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Phone",
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
      ],
    ),
  );
}


Widget RegisterButton(context){
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
          child: Text("Register",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
          onPressed: (){print("Register pressed");}
      ),
    ),
  );
}

Widget BackToLogin(context){
  return IconButton(
      icon: Icon(Icons.arrow_back,color: Colors.white,size: 30,),
      onPressed: (){
        Navigator.pop(context);
      }
  );
}