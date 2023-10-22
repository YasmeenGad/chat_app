import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({this.hintText, this.mycontroller, this.obsecure = false});
  String? hintText;
  var mycontroller;
  bool obsecure;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecure,
      controller: mycontroller,
      validator: (data) {
        if (data!.isEmpty) {
          return "field is required";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          errorBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
    );
  }
}
