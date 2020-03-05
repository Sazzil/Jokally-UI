import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_jokally/model/Items.dart';
import 'GetRatings.dart';
//import 'GridItemDetails.dart';

class ItemList extends StatelessWidget {
  final Items items;

  const ItemList(BuildContext context, {@required this.items});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      /* onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GridItemDetails(),
          ),
        );
      } ,*/
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
            child: Text(
              items.shopName,
              //'Asian Kiosk',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                fontSize: 22.0,
                color: Color.fromRGBO(41, 47, 54, 1),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Card(
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 18.0 / 12.0,
                    child: Image.asset(
                    //'assets/images/shop1.png',
                    items.shopImg1,
                    fit: BoxFit.cover,
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        items.street,
                        //'Dahlenar Straße 42',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(41, 47, 54, 1),
                        ),
                         overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        items.city,
                        //'41239 Mönchengladbach',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(41, 47, 54, 1),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      GetRatings(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
