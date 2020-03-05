import 'package:flutter/material.dart';

class GetRatings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.star,
            size: 18.0,
            color: Color.fromRGBO(36, 110, 185, 1),
          ),
          Icon(
            Icons.star,
            size: 18.0,
            color: Color.fromRGBO(36, 110, 185, 1),
          ),
          Icon(
            Icons.star,
            size: 18.0,
            color: Color.fromRGBO(36, 110, 185, 1),
          ),
          Icon(
            Icons.star,
            size: 18.0,
            color: Color.fromRGBO(36, 110, 185, 1),
          ),
          Icon(
            Icons.star_half,
            size: 18.0,
            color: Color.fromRGBO(36, 110, 185, 1),
          ),
        ],
      ),
    );
  }
}