// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../models/user_model.dart';

class ChatScreen extends StatefulWidget {
  late final User user;
  ChatScreen({required this.user});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build (BuildContext context){
    return Scaffold(
      
    );
  }
}