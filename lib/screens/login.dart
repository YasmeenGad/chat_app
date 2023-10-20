import 'package:chat_app/constant.dart';
import 'package:chat_app/screens/register.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  static const String routeName = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            const SizedBox(
              height: 75,
            ),
            Image.asset(
              "assets/images/scholar.png",
              height: 100,
            ),
            Text(
              "Scholar Chat",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontFamily: 'pacifico-regular'),
            ),
            const SizedBox(
              height: 75,
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
              height: 15,
            ),
            Form(
                child: Column(
              children: [
                CustomTextField(
                  hintText: "Email",
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextField(
                  hintText: "Password",
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomButton(
                  txt: "Login",
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Register.routeName);
                      },
                      child: Text(
                        "Register ",
                        style: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                    ),
                  ],
                ),
              ],
            )),
            const SizedBox(
              height: 75,
            ),
          ],
        ),
      ),
    );
  }
}
