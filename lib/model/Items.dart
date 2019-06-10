import 'package:meta/meta.dart';

class Items {
  int id;
  String shopName;
  String shopCategory;
  String street;
  //int houseNo;
  //int zipCode;
  String city;
  String province;
  String country;
  double rating;
  String imageUrl;
  String bannerUrl;
  String shopImg1;
  String shopImg2;
  String shopImg3;
  String shopImg4;

  Items({
    @required this.id,
    @required this.shopName,
    @required this.shopCategory,
    @required this.street,
    //@required this.houseNo,
    //@required this.zipCode,
    @required this.city,
    @required this.province,
    @required this.country,
    @required this.rating,
    @required this.imageUrl,
    @required this.bannerUrl,
    @required this.shopImg1,
    @required this.shopImg2,
    @required this.shopImg3,
    @required this.shopImg4,
  });
}
