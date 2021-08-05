import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/login_screen/login_with_google.dart';
import 'package:untitled/screens/widgets/components.dart';
import 'package:untitled/screens/widgets/details.dart';
import 'package:untitled/screens/widgets/logo_text.dart';
import 'package:untitled/strings.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 100,
         leading:  Icon(Icons.arrow_back , color: Colors.black, size: 25, ),
          title: Text(txt_login , style: TextStyle(color: Colors.black , fontSize: 22),),
        ),
        body: Column(

          children: [
            Container(
              padding: EdgeInsets.only(top: 30),

              child: Column(

                children: [
                  LogoText(),
                  SizedBox(height: 120,),
                  Details(),
                ],
              ),
            ),
              SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWithGoogle()));
              },
              child: defaultButton(

                color: Colors.blueAccent,
                text: txt_continue_with_google,
                textColor: Colors.white,
                image: url_google_img,
                // color: Colors.blueAccent,
                // data: txt_continue_with_google,
                // textColor: Colors.white,
                // image: url_google_img,
              ),
            ),
            SizedBox(height: 20,),
            defaultButton(
              color: Colors.white,
              text: txt_continue_with_facebook,
              textColor: Colors.black,
              image: url_facebook_img,
              // color: Colors.white,
              // data: txt_continue_with_facebook,
              // textColor: Colors.black,
              // image: url_facebook_img ,
            ),
            SizedBox(height: 20,),
            defaultButton(

              color: Colors.white,
              text: txt_continue_with_email,
              textColor: Colors.black,
              image: url_email_img,
              // color: Colors.white,
              // data: txt_continue_with_email,
              // textColor: Colors.black,
              // image: url_email_img ,
            ),
            SizedBox(height: 65,)
          ],
        ),
      ),
    );
  }
}
