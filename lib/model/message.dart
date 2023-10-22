import 'package:chat_app/constant.dart';

class Message {
  String? message;
  String? id;

  Message({this.message, this.id});

  factory Message.fromJson(json) {
    return Message(message: json['message'], id: json['id']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data[kMessage] = this.message;
    return data;
  }
}
