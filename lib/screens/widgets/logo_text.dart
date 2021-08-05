import 'package:flutter/material.dart';
import 'package:untitled/strings.dart';

class LogoText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Text(txt_app_name , style: TextStyle(color: Colors.deepOrange , fontSize: 45 , fontWeight: FontWeight.bold),),
        Text('اللي بخاطرك وصلك' , style: TextStyle(color: Colors.blueGrey , fontSize: 18),),
      ],
    );
  }
}
