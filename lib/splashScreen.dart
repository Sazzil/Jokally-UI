import 'dart:async';
import 'package:flutter/material.dart';
import 'shops/ShopsList.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => ShopList())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LogoPage(),
      ),
    );
  }
}

class LogoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The InkWell Wraps our custom flat button Widget
    return Container(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        bottom: 25,
      ),
      child: Image.asset(
        'assets/images/jok_logo.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
