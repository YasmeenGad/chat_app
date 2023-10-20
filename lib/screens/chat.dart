import 'package:chat_app/constant.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});
  static const String routeName = "chat";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            kLogo,
            height: 50,
          ),
          Text(
            "Chat",
            style: TextStyle(),
          )
        ]),
      ),
    );
  }
}
