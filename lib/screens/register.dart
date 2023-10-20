import 'package:chat_app/constant.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});
  static const String routeName = "register";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            SizedBox(
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
            SizedBox(
              height: 75,
            ),
            Row(
              children: [
                Text(
                  "REGISTER",
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
                  txt: "Register",
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                    ),
                  ],
                ),
              ],
            )),
            SizedBox(
              height: 75,
            ),
          ],
        ),
      ),
    );
  }
}
