import 'package:flutter/material.dart';
import 'ui/splashScreen.dart';
import 'package:flutter/rendering.dart';
void main() {
  //debugPaintSizeEnabled=true;
  //debugPaintLayerBordersEnabled=true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
