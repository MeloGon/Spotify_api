import 'package:flutter/material.dart';

class User with ChangeNotifier {
  String? id;
  String? displayName;
  String? photoUrl;
  String? email;

  User({this.id, this.displayName, this.photoUrl, this.email});
}
