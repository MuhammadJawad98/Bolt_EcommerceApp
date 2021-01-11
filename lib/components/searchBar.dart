import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10), //border corner radius
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4), //color of shadow
              spreadRadius: 5, //spread radius
              blurRadius: 7, // blur radius
                offset: Offset(0.0, 0.75)
              //first paramerter of offset is left-right
              //second parameter is top to down
            ),
            //you can set more BoxShadow() here
          ],
        ),
        child:  Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.search),
          ),
          Container(
            width: 2,
            height: 15,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
          Text('Search Your Product')
        ],
      ),
      ),

    );
  }
}
