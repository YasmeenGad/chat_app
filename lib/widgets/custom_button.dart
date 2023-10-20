import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.txt});
  String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Center(child: Text(txt)),
    );
  }
}
