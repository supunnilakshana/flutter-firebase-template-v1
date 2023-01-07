import 'package:flutter/cupertino.dart';

class UserModel extends ChangeNotifier {
  String? uid;
  String name;
  String email;
  int adno;
  String phone;
  String district;
  String city;
  String address;
  String date;
  String imageurl;

  UserModel({
    this.uid,
    required this.name,
    required this.email,
    required this.phone,
    required this.district,
    this.adno = 0,
    required this.city,
    this.address = "",
    required this.date,
    this.imageurl = "",
  });
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'adno': adno,
      'phone': phone,
      'district': district,
      'city': city,
      'address': address,
      'date': date,
      'imageurl': imageurl,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> res) {
    return UserModel(
      uid: res['uid'],
      name: res['name'],
      email: res['email'],
      adno: res['adno'] ?? "",
      phone: res['phone'] ?? "",
      district: res['district'],
      city: res['city'] ?? "",
      date: res['date'],
      address: res['address'] ?? "",
      imageurl: res['imageurl'] ?? "",
    );
  }

  updateData(UserModel userModel) {
    uid = userModel.uid;
    name = userModel.name;
    email = userModel.email;
    phone = userModel.phone;
    district = userModel.district;
    city = userModel.city;
    adno = userModel.adno;
    date = userModel.date;
    address = userModel.address;
    imageurl = userModel.imageurl;
    snum = userModel.phone;
    sdis = userModel.district;
    scity = userModel.city;
    notifyListeners();
  }

  String sdis = "";
  String scity = "";
  String snum = "";
  updatescity(String val) {
    scity = val;
    notifyListeners();
  }

  updatesdis(String val) {
    sdis = val;
    notifyListeners();
  }

  updatesphone(String val) {
    snum = val;
    notifyListeners();
  }
}
