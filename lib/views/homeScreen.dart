import 'dart:ui';

import 'package:bolt_ecommerce_app/components/home/categories.dart';
import 'package:bolt_ecommerce_app/components/searchBar.dart';
import 'package:flutter/material.dart';

import 'drawer/MyDrawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Icon(Icons.circle_notifications),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.filter_alt),
          SizedBox(
            width: 20,
          )
        ],
      ),
      drawer: Drawer(child: MyDrawer()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBar(),
            Categories(),
          ],
        ),
      ),
    );
  }
}
