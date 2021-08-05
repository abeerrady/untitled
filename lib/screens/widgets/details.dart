import 'package:flutter/material.dart';

class Details extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Text(' سجل الدخول او أنشئ جساب ' , style: TextStyle(color: Colors.black , fontSize: 15  , fontWeight: FontWeight.bold),),
        Text(' استلم الهدايا واحفظ بياناتك من اجل تجربة توصيل اسرع ' , style: TextStyle(color: Colors.blueGrey , fontSize: 10),),
      ],
    );
  }
}
