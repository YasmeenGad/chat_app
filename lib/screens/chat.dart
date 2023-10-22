import 'package:chat_app/constant.dart';
import 'package:chat_app/model/message.dart';
import 'package:chat_app/widgets/chat_buble.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Chat extends StatelessWidget {
  Chat({super.key});
  static const String routeName = "chat";
  final ScrollController _controller = ScrollController();

  var message = FirebaseFirestore.instance.collection(kMessageCollection);
  TextEditingController mgs = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments as String;
    return StreamBuilder<QuerySnapshot>(
        stream: message.orderBy('createdAt', descending: true).snapshots(),
        builder:
            ((BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            List<Message> messageList = [];

            // ignore: dead_code
            for (int i = 0; i < snapshot.data!.docs.length; i++) {
              messageList.add(Message.fromJson(snapshot.data!.docs[i]));
            }
            return Scaffold(
                appBar: AppBar(
                  backgroundColor: kPrimaryColor,
                  title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                      child: ListView.builder(
                          reverse: true,
                          controller: _controller,
                          itemCount: messageList.length,
                          itemBuilder: (context, index) {
                            return ChatBuble(
                              message: messageList[index],
                            );
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: mgs,
                        decoration: InputDecoration(
                            hintText: "Send Message",
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                            border: OutlineInputBorder(),
                            suffixIcon: InkWell(
                                onTap: () {
                                  message.add({
                                    'message': mgs.text,
                                    'createdAt': DateTime.now(),
                                    'id': email
                                  });
                                  mgs.clear();
                                  _controller.animateTo(
                                    0,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.fastOutSlowIn,
                                  );
                                },
                                child: Icon(Icons.send, color: kPrimaryColor))),
                      ),
                    ),
                  ],
                ));
          } else {
            return Scaffold(
                appBar: AppBar(
                  backgroundColor: kPrimaryColor,
                  title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                    Center(
                      child: CircularProgressIndicator(),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: mgs,
                        decoration: InputDecoration(
                            hintText: "Send Message",
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                            border: OutlineInputBorder(),
                            suffixIcon: InkWell(
                                onTap: () {
                                  message.add({
                                    'message': mgs.text,
                                  });
                                  mgs.clear();
                                },
                                child: Icon(Icons.send, color: kPrimaryColor))),
                      ),
                    ),
                  ],
                ));
          }
        }));
  }
}
