import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class Consumer {
  String endpoint =
      "https://apim3w.com/api/index.php/v1/soap/LoginUsuario.json";
  Future getUserWigilbas() async {
    Map map = {
      'data': {'nombreUsuario': 'odraude1362@gmail.com', 'clave': 'Jorgito123'}
    };

    var body = json.encode(map);
    log(body);
    try {
      final response = await http.post(Uri.parse(endpoint),
          headers: {
            'X-MC-SO': 'WigilabsTest',
            "content-type": "application/json",
            "accept": "application/json",
          },
          body: body);
      //log('el response body ${response.body}');
      return response.body;
    } catch (e) {
      log(e.toString());
    }
  }
}

Consumer consumer = Consumer();
