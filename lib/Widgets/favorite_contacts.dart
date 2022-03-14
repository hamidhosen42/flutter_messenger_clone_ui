// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../models/message_model.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween
                children: [
                  Text(
                    "Favorite Contacts",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz,
                    ),
                    iconSize: 30,
                  ),
                ]),
          ),
          Container(
            height: 120,
            //color: Colors.blueGrey,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              itemBuilder: (BuildContext context, var index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage:
                            NetworkImage(favorites[index].imageUrl),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        favorites[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.blueGrey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
