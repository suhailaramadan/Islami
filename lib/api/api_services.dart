import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:islami_splash/response_radio/response_radio.dart';

class ApiServices {
  static Future<ResponseRadio> getRadio() async {
    final url = Uri.https(
      "mp3quran.net",
      "api/v3/radios",
    );
    final response = await http.get(url);
    final json = jsonDecode(response.body);
    return ResponseRadio.fromJson(json);
  }
}
