import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/screens/login_screen/login_view.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.only(bottom: 20),
              height: 120,
              child: Text('talabat' , style: TextStyle(color: Colors.white , fontSize: 50 , fontWeight: FontWeight.bold),),
            ),
          )
        ],),
    );
  }
}
