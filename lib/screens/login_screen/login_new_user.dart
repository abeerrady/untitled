import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/login_screen/login_view.dart';
import 'package:untitled/screens/widgets/components.dart';
import 'package:untitled/strings.dart';

class LoginNewUser extends StatefulWidget {

  @override
  _LoginNewUserState createState() => _LoginNewUserState();
}

class _LoginNewUserState extends State<LoginNewUser> {
  bool item = true;
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
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
                child: Text('  إستمرار عبر الإيميل   ' , style: TextStyle(color: Colors.black , fontSize: 20 , fontWeight: FontWeight.bold),),
              ),

              SizedBox(height: 20,),
              defaultFormField(
               controller: firstNameController,
                hint: 'الإسم الأول',
                type: TextInputType.text,
                validate: (String value){
                 if(value.isEmpty){
                   return'يرجي ادخال الاسم';
                 } return null;
                }
              ),
              SizedBox(height: 40,),
              defaultFormField(
                  controller: lastNameController,
                  hint: 'الإسم الأخير',
                  type: TextInputType.text,
                  validate: (String value){
                    if(value.isEmpty){
                      return'يرجي ادخال الاسم';
                    } return null;
                  }
              ),
              SizedBox(height: 40,),
              defaultFormField(
                  controller: emailController,
                  hint: 'البريد الإلكتوني ',
                  type: TextInputType.emailAddress,
                  validate: (String value){
                    if(value.isEmpty){
                      return'يرجي ادخال البريد الإلكتروني';
                    } return null;
                  }
              ),
              SizedBox(height: 40,),
              defaultFormField(
                  controller: passwordController,
                  hint: 'اختر كلمة السر ',
                  suffix: isPassword? Icons.visibility_off : Icons.visibility,
                  isPassword: isPassword,
                  suffixPressed: (){
                    setState(() {
                      isPassword =! isPassword;
                    });
                  },
                  type: TextInputType.visiblePassword,
                  validate: (String value){
                    if(value.isEmpty){
                      return'يرجي ادخال كلمة السر';
                    } return null;
                  }
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(right: 20 , top: 10),
                child: Text('  كلمة المرور يجب ان تتألف من 6 الي 16 حرف    ' , style: TextStyle(color: Colors.blueGrey , fontSize: 15 , ),),
              ),
              SizedBox(height: 40,),

              Row(
                children: [
                  Checkbox(value: item,
                      checkColor: Colors.white,
                      activeColor: Colors.deepOrange,
                      onChanged: (value){
                    setState(() {
                      item= value;
                    });
                  }),
                  Text('استلم اخر العروض والخصومات ' , style: TextStyle(color: Colors.black , fontSize: 18),),
                ],
              ),
              SizedBox(height: 30,),
               InkWell(onTap: (){
                 if(formKey.currentState.validate()){
                   print(firstNameController.text);
                   print(lastNameController.text);
                   print(emailController.text);
                   print(passwordController.text);
                   Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                 }
               },
                 child: defaultButton(
                   text: 'تسجيل مستخدم جديد',
                   color: Colors.deepOrange,
                   textColor: Colors.white,
                   image: '',
                 ),
               ),



            ],
          ),
        ),
      ),
    );
  }
}
