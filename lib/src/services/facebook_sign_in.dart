import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookSignInProvider extends ChangeNotifier {
  Future facebookLogin() async {
    AccessToken? _accessToken;
    Map<String, dynamic>? _userData;
    try {
      final LoginResult result = await FacebookAuth.instance.login();
      if (result.status == LoginStatus.success) {
        _accessToken = result.accessToken;
        final userData = await FacebookAuth.instance.getUserData();
        // final userData = await FacebookAuth.instance.getUserData(fields: "email,birthday,friends,gender,link");
        _userData = userData;
      } else {
        log(result.status.toString());
        log(result.message.toString());
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future _logOut() async {
    await FacebookAuth.instance.logOut();
  }
}
