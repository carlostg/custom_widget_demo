// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
import 'dart:math';
import 'dart:convert';
import 'package:date_time_format/date_time_format.dart';
import 'package:crypto/crypto.dart';

Future<dynamic> createPayload2() async {
  var payload = {};

  Map<String, String> auth = {
    "login": "b0f8416518e1909c70af5c0a47676cea",
    "tranKey": "b790xxJQ250j1L7D"
  };

  Random random = Random();
  String nonce = random.nextDouble().toString().substring(2);
  List<int> nonceUtf8 = utf8.encode(nonce);
  String nonceBase64 = base64.encode(nonceUtf8);

  String seed = DateTime.now().format();
  List<int> seedUtf8 = utf8.encode(seed);

  List<int> secretKeyUtf8 = utf8.encode(auth["tranKey"]);

  var tranKey = sha256.convert(nonceUtf8 + seedUtf8 + secretKeyUtf8).bytes;
  String tranKeyBase64 = base64.encode(tranKey);

  auth["tranKey"] = tranKeyBase64;
  auth["nonce"] = nonceBase64;
  auth["seed"] = seed;

  payload["auth"] = auth;

  String locale = "en_PR";
  payload["locale"] = locale;

  Map<String, Object> buyer = {
    "name": "Carlos",
    "surname": "Torres",
    "email": "ctorres@sarcopr.com",
    "document": "100016",
    "documentType": "CC",
    "mobile": 17873094976
  };
  payload["buyer"] = buyer;

  Map<String, Object> payment = {
    "reference": "60016",
    "description": "Pago completo",
    "amount": {"currency": "USD", "total": "4.99"},
    "allowPartial": false
  };
  payload["payment"] = payment;

  String expiration = DateTime.now().add(Duration(days: 1)).format();
  payload["expiration"] = expiration;

  String returnUrl = "https://www.churchspr.com";
  payload["returnUrl"] = returnUrl;

  String ipAddress = "127.0.0.1";
  payload["ipAddress"] = ipAddress;

  String userAgent = "Sarco PR - Pruebas";
  payload["userAgent"] = userAgent;

  // print(json.encode(payload));

  return payload;
}
