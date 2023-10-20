import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.txt, required this.ontap});
  String txt;
  void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Center(child: Text(txt)),
      ),
    );
  }
}
