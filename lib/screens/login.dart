import 'package:chat_app/components/login_with_email_and_password.dart';
import 'package:chat_app/constant.dart';
import 'package:chat_app/screens/register.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Login extends StatefulWidget {
  Login({super.key});
  static const String routeName = "login";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isClicked,
      child: Scaffold(
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
                  key: formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        mycontroller: email,
                        hintText: "Email",
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      CustomTextField(
                        mycontroller: password,
                        hintText: "Password",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomButton(
                        ontap: () {
                          if (formKey.currentState!.validate()) {
                            isClicked = true;
                            setState(() {});
                            LoginWithEmailAndPassword(
                                email.text, password.text, context);
                            isClicked = false;
                            setState(() {});
                          }
                        },
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
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5)),
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
      ),
    );
  }
}
