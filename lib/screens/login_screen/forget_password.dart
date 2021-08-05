import 'package:flutter/material.dart';
import 'package:untitled/screens/widgets/components.dart';
import 'package:untitled/strings.dart';

class ForgetPassword extends StatefulWidget {

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  var emailController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Form(
        key: formKey,
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
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20 , right: 20),
                child: defaultFormField(
                  controller: emailController,
                    hint: 'البريد الإلكتروني',
                    type: TextInputType.emailAddress,

                ),
              ),
              SizedBox(height: 30,),
              defaultButton(
                image: '',
                text: 'نسيت كلمة المرور',
                textColor: Colors.white,
                color: Colors.deepOrange,
              )
            ],
          ),
        ),
      ),
    );
  }
}
