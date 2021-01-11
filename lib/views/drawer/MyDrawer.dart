import 'package:bolt_ecommerce_app/views/drawer/MyListTile.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(),
         MyListTile(title: 'Home',),
         MyListTile(title: 'Profile',),
         MyListTile(title: 'My Cart',),
         MyListTile(title: 'Favourite',),
         MyListTile(title: 'My Orders',),
         MyListTile(title: 'Language',),
         MyListTile(title: 'Settings',),
          // GestureDetector(
          //   child: Container(
          //     padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
          //     alignment: Alignment.centerRight,
          //     child: CircleAvatar(
          //       child: Icon(
          //         Icons.close,
          //         color: Colors.white,
          //       ),
          //       backgroundColor: Colors.grey,
          //     ),
          //   ),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          // ),
        ],
      ),
    );
  }
}
