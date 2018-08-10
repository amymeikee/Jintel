import 'package:flutter/material.dart';
import 'package:jintel/chatscreen.dart';

class ChatMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Chat With My Doctor"),
        ),
        body: new ChatScreen());
  }
}