import 'package:chat_app/constant.dart';
import 'package:chat_app/widgets/chat_buble.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Chat extends StatelessWidget {
  Chat({super.key});
  static const String routeName = "chat";

  CollectionReference message = FirebaseFirestore.instance.collection(kMessage);
  TextEditingController mgs = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
        future: message.doc().get(),
        builder: ((BuildContext context,
            AsyncSnapshot<DocumentSnapshot<Object?>> snapshot) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: kPrimaryColor,
                title:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(itemBuilder: (context, index) {
                      return ChatBuble();
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: mgs,
                      onSubmitted: (data) {
                        message.add({
                          'message': data,
                        });
                        mgs.clear();
                      },
                      decoration: InputDecoration(
                          hintText: "Send Message",
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16)),
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.send, color: kPrimaryColor)),
                    ),
                  ),
                ],
              ));
        }));
  }
}
