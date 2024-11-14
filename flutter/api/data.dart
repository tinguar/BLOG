import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Map<String, String>> freaseApi() async {
  final respuesta = await http
      .get(Uri.parse('https://frasedeldia.azurewebsites.net/api/phrase'));

  if (respuesta.statusCode == 200) {
    final jsonData = jsonDecode(respuesta.body);
    final frase = jsonData['phrase'];
    final autor = jsonData['author'];
    return {'frase': frase, 'autor': autor};
  } else {
    throw Exception('NO contectado');
  }
}
