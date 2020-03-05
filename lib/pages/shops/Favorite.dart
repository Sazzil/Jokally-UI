import 'package:flutter/material.dart';
import '../../ui/bottomNavBar.dart';

class FavoriteShop extends StatefulWidget {
  _FavoriteShopState createState() => _FavoriteShopState();
}

class _FavoriteShopState extends State<FavoriteShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Saved",
          style: TextStyle(color: Color.fromRGBO(41, 47, 54, 1), fontSize: 24),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        bottom: PreferredSize(
          child: Container(
            color: Color.fromRGBO(41, 47, 54, 1),
            height: 1.0,
          ),
          preferredSize: Size.fromHeight(1.0)
        ),
      ),
      body: Center(
        child: _myFavorites(),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}

Widget _myFavorites() => Container(
  
);