import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  String title;

  MyListTile({this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 40,
        child: Center(child: Text(title,textAlign: TextAlign.center,style: TextStyle(fontSize: 20),)),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
