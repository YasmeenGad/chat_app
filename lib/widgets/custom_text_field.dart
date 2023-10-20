import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({this.hintText, this.mycontroller});
  String? hintText;
  var mycontroller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
