import 'package:flutter/material.dart';

Widget defaultFormField({
  @required TextEditingController controller,
  @required TextInputType type,
  Function onSubmit,
  Function onChange,
  bool isPassword = false,
  @required Function validate,
  @required String hint,
  IconData suffix,
  Function suffixPressed,
}) =>
    Padding(
      padding: const EdgeInsets.only(left: 20 , right: 20),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        keyboardType: type,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        validator: validate,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
          suffixIcon: suffix != null
              ? IconButton(
                  onPressed: suffixPressed,
                  icon: Icon(
                    suffix,
                    color: Colors.grey,
                  ))
              : null,
        ),
      ),
    );

Widget defaultButton({
  double width = double.infinity,
  @required Color color,
  double radius = 0,
  @required Function function,
  @required String text,
  @required textColor,
  @required image,
}) =>
    Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Container(
          width: width,
          height: 65,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey[300])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(image))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 90),
                child: Text(
                  text,
                  style: TextStyle(color: textColor, fontSize: 20),
                ),
              ),
            ],
          )),
    );

