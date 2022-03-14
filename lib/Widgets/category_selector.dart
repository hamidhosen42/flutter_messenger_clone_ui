// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {

  var selectedIndex=0;

  final List<String> categories=["Message","Online","Group",'Reguests'];
  @override
  Widget build(BuildContext context){
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext contex,var index){
          return GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex=index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 30.0,
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  letterSpacing: 1,
                  color: selectedIndex==index?Colors.white:Colors.white60,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}