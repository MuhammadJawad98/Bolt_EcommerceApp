import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.text,
    @required this.imgUrl,
    @required this.press,
  }) : super(key: key);

  final String text, imgUrl;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 150,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Card(
                // shape:RoundedRectangleBorder(
                //     side: BorderSide(color: Colors.white, width: 0.5),
                //     borderRadius: BorderRadius.circular(5)),
                child: Container(
                  // padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.15),
                  height: 80,
                  width: 130,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.only(
                  //       topRight: Radius.circular(15),
                  //       bottomRight: Radius.circular(15)),
                  //   color: Colors.deepPurple,
                  // ),
                  child: Image.asset(
                    imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(text, textAlign: TextAlign.center)
            ],
          ),
        ),
      ),
    );
  }
}
