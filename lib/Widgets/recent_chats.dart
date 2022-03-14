// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../models/message_model.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // height: 300,
        // color: Colors.blue,
        decoration: BoxDecoration(
          color: Colors.white,
          //color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: ListView.builder(
            physics: AlwaysScrollableScrollPhysics(),
            itemCount: chats.length,
            itemBuilder: (BuildContext context, var index) {
              return Container(
                margin: EdgeInsets.only(top: 5, bottom: 5, right: 20),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: chats[index].unread ? Color(0xFFFFEFEE) : Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 27,
                          backgroundImage:
                              NetworkImage(chats[index].sender.imageUrl),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              chats[index].sender.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.50,
                              child: Text(
                                chats[index].text,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueGrey,
                                  fontSize: 15,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          chats[index].time,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        chats[index].unread
                            ? Container(
                                height: 20,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "NEW",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            : SizedBox.shrink(),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
