import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'GridList.dart';
import 'package:app_jokally/model/Items.dart';
import 'ItemList.dart';
import '../bottomNavBar.dart';

class ShopList extends StatefulWidget {
  @override
  _JkShopList createState() => _JkShopList();
}

class _JkShopList extends State<ShopList> {
  List<Items> itemList;
  @override
  Widget build(BuildContext context) {
    itemList = _itemList();
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(5),
          child: OrientationBuilder(
            builder: (context, orientation) {
              return CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    floating: true,
                    titleSpacing: 0,
                    backgroundColor: Colors.white,
                    elevation: 1.0,
                    title: _searchCard(),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 15),
                  ),
                  SliverToBoxAdapter(
                    child: _shopListTitle(),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 15),
                  ),
                  SliverToBoxAdapter(
                    child: ScrollableBadges(),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 15),
                  ),
                  SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
                      childAspectRatio: orientation == Orientation.portrait ? 0.79 : 0.92,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return ItemList(context, items: itemList[index]);
                      },
                      childCount: itemList.length,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
      //bottomNavigationBar: BottomNavBar(),
    );
  }
}

//SEARCH SECTION
Widget _searchCard() => Container(
      child: Card(
        color: Color.fromRGBO(247, 255, 247, 1),
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color.fromRGBO(41, 47, 54, 1),
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.black38),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    color: Color.fromRGBO(41, 47, 54, 1),
                  ),
                  cursorColor: Color.fromRGBO(41, 47, 54, 1),
                  textInputAction: TextInputAction.search,
                  autocorrect: false,
                ),
              ),
              Icon(
                Icons.menu,
                color: Color.fromRGBO(41, 47, 54, 1),
              ),
            ],
          ),
        ),
      ),
    );

//TITLE SECTION
Widget _shopListTitle() => Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        'Shops you are looking for',
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: Color.fromRGBO(41, 47, 54, 1), fontSize: 24),
      ),
    );

//SCROLLABLE CATEGORY SECTION

class ScrollableBadges extends StatelessWidget {
  final List<String> entries = <String>[
    'General',
    'Asian',
    '24/7',
    'Indian',
    'Japanese',
    'Others'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: RaisedButton(
              elevation: 5,
              textColor: Colors.white,
              onPressed: () {},
              color: Color.fromRGBO(36, 110, 185, 1),
              child: Text(
                '${entries[index]}',
                style: TextStyle(fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
}

/* sliverGrid dummy data */
List<Items> _itemList() {
  return [
    Items(
      id: 0,
      shopName: "Demo",
      shopCategory: "General",
      street: "Lorem Ipsum 149",
      //houseNo:
      //zipCode:
      city: "Demo",
      province: "Demo",
      country: "Demo",
      rating: 4,
      imageUrl: 'assets/images/shop1.png',
      bannerUrl: 'assets/images/shop1.png',
      shopImg1: 'assets/images/shop1.png',
      shopImg2: 'assets/images/shop1.png',
      shopImg3: 'assets/images/shop1.png',
      shopImg4: 'assets/images/shop1.png',
    ),
    Items(
      id: 1,
      shopName: "Demo",
      shopCategory: "General",
      street: "Lorem Ipsum 149",
      //houseNo:
      //zipCode:
      city: "Demo",
      province: "Demo",
      country: "Demo",
      rating: 4,
      imageUrl: 'assets/images/shop1.png',
      bannerUrl: 'assets/images/shop1.png',
      shopImg1: 'assets/images/shop1.png',
      shopImg2: 'assets/images/shop1.png',
      shopImg3: 'assets/images/shop1.png',
      shopImg4: 'assets/images/shop1.png',
    ),
    Items(
      id: 2,
      shopName: "Demo",
      shopCategory: "General",
      street: "Lorem Ipsum 149",
      //houseNo:
      //zipCode:
      city: "Demo",
      province: "Demo",
      country: "Demo",
      rating: 4,
      imageUrl: 'assets/images/shop1.png',
      bannerUrl: 'assets/images/shop1.png',
      shopImg1: 'assets/images/shop1.png',
      shopImg2: 'assets/images/shop1.png',
      shopImg3: 'assets/images/shop1.png',
      shopImg4: 'assets/images/shop1.png',
    ),
    Items(
      id: 3,
      shopName: "Demo",
      shopCategory: "General",
      street: "Lorem Ipsum 149",
      //houseNo:
      //zipCode:
      city: "Demo",
      province: "Demo",
      country: "Demo",
      rating: 4,
      imageUrl: 'assets/images/shop1.png',
      bannerUrl: 'assets/images/shop1.png',
      shopImg1: 'assets/images/shop1.png',
      shopImg2: 'assets/images/shop1.png',
      shopImg3: 'assets/images/shop1.png',
      shopImg4: 'assets/images/shop1.png',
    ),
    Items(
      id: 4,
      shopName: "Demo",
      shopCategory: "General",
      street: "Lorem Ipsum 149",
      //houseNo:
      //zipCode:
      city: "Demo",
      province: "Demo",
      country: "Demo",
      rating: 4,
      imageUrl: 'assets/images/shop1.png',
      bannerUrl: 'assets/images/shop1.png',
      shopImg1: 'assets/images/shop1.png',
      shopImg2: 'assets/images/shop1.png',
      shopImg3: 'assets/images/shop1.png',
      shopImg4: 'assets/images/shop1.png',
    ),
    Items(
      id: 5,
      shopName: "Demo",
      shopCategory: "General",
      street: "Lorem Ipsum 149",
      //houseNo:
      //zipCode:
      city: "Demo",
      province: "Demo",
      country: "Demo",
      rating: 4,
      imageUrl: 'assets/images/shop1.png',
      bannerUrl: 'assets/images/shop1.png',
      shopImg1: 'assets/images/shop1.png',
      shopImg2: 'assets/images/shop1.png',
      shopImg3: 'assets/images/shop1.png',
      shopImg4: 'assets/images/shop1.png',
    ),
    Items(
      id: 6,
      shopName: "Demo",
      shopCategory: "General",
      street: "Lorem Ipsum 149",
      //houseNo:
      //zipCode:
      city: "Demo",
      province: "Demo",
      country: "Demo",
      rating: 4,
      imageUrl: 'assets/images/shop1.png',
      bannerUrl: 'assets/images/shop1.png',
      shopImg1: 'assets/images/shop1.png',
      shopImg2: 'assets/images/shop1.png',
      shopImg3: 'assets/images/shop1.png',
      shopImg4: 'assets/images/shop1.png',
    ),
    Items(
      id: 7,
      shopName: "Demo",
      shopCategory: "General",
      street: "Lorem Ipsum 149",
      //houseNo:
      //zipCode:
      city: "Demo",
      province: "Demo",
      country: "Demo",
      rating: 4,
      imageUrl: 'assets/images/shop1.png',
      bannerUrl: 'assets/images/shop1.png',
      shopImg1: 'assets/images/shop1.png',
      shopImg2: 'assets/images/shop1.png',
      shopImg3: 'assets/images/shop1.png',
      shopImg4: 'assets/images/shop1.png',
    ),
  ];
}
