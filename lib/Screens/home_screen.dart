// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

import '../Widgets/category_selector.dart';
import '../Widgets/favorite_contacts.dart';
import '../Widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Chats",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30,
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
            child: Container(
              height: 500.0,
              decoration: BoxDecoration(
                // color: Colors.yellow,
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  FavoriteContacts(),
                  RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
