import 'package:chat_app/constant.dart';

class Message {
  String? message;

  Message({this.message});

  factory Message.fromJson(json) {
    return Message(message: json['message']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data[kMessage] = this.message;
    return data;
  }
}
