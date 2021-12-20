import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:spotify_api_app/src/extras/consumer.dart';
import 'package:spotify_api_app/src/models/userwigilabs.dart';

class WigilabsProvider with ChangeNotifier {
  UserWigilabs? _usuario;

  UserWigilabs? get usuario => _usuario!;

  Future<void> getUserInfo() async {
    UserWigilabs objectUser = await consumer.getUserWigilbas();
    log('el object user ${objectUser.response.usuario}');
    notifyListeners();
  }
}
