import 'package:flutter/material.dart';
import 'package:untitled/screens/login_screen/forget_password.dart';
import 'package:untitled/screens/login_screen/login_new_user.dart';
import 'package:untitled/screens/widgets/components.dart';
import 'package:untitled/strings.dart';

class LoginWithGoogle extends StatefulWidget {
  @override
  _LoginWithGoogleState createState() => _LoginWithGoogleState();
}

class _LoginWithGoogleState extends State<LoginWithGoogle> {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 100,
          leading: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back , color: Colors.black, size: 25, )),
          title: Text(txt_login , style: TextStyle(color: Colors.black , fontSize: 22),),
        ),
        body: Form(
          key: formKey,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20 , top: 10),
                child: Text('تواصل مع البريد الالكتروني ' , style: TextStyle(color: Colors.black , fontSize: 20 , fontWeight: FontWeight.bold),),
              ),

              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20 , right: 20),
                child: defaultFormField(
               controller: emailController,
                  hint: 'البريد الإلكتروني',
                  type: TextInputType.emailAddress,
                  validate: (String value){
                 if(value.isEmpty){
                   return'يرجي إدخال البريد الإلكتروني';}
                 return null;
                  }
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(left: 20 , right: 20),
                child: defaultFormField(
                  controller: passwordController,
                  hint: 'كلمة المرور',
                  suffix: isPassword? Icons.visibility_off : Icons.visibility,
                  isPassword: isPassword,
                  suffixPressed: (){
                    setState(() {
                      isPassword =! isPassword;
                    });
                  },
                  type: TextInputType.visiblePassword,
                  validate: (String value){
                    if(value.isEmpty)
                      {return 'يرجي إدخال كلمة السر';}
                    return null;
                  }
                )
              ),
              SizedBox(height: 30,),
              defaultButton(
                color: Colors.deepOrange,
                text: txt_login,
                textColor: Colors.white,
                image: '',
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                   onTap: (){
                     if(formKey.currentState.validate()){
                       print(emailController.text);
                       print(passwordController.text);
                       Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassword()));

                     }
                   },
                    child: Text('نسيت كلمة المرور ؟' , style: TextStyle(color: Colors.deepOrange , fontSize: 20),)),
                InkWell(
                    onTap: (){
                      if(formKey.currentState.validate()){

                        print(emailController.text);
                        print(passwordController.text);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginNewUser()));
                      }
                    },
                    child: Text('  تسجيل مستخدم جديد' , style: TextStyle(color: Colors.deepOrange , fontSize: 20),)),
              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}
