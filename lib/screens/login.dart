import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  static const String routeName = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2B475E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Center(
          child: Column(
            children: [
              Spacer(
                flex: 2,
              ),
              Image.asset("assets/images/scholar.png"),
              Text(
                "Scholar Chat",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontFamily: 'pacifico-regular'),
              ),
              Spacer(
                flex: 2,
              ),
              Row(
                children: [
                  Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                  child: Column(
                children: [
                  CustomTextField(
                    hintText: "Email",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    hintText: "Password",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Register ",
                        style: TextStyle(color: Color(0xFF)),
                      ),
                    ],
                  ),
                  Spacer(
                    flex: 3,
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
