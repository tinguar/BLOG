import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Utilizando API'.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            elevation: 2,
            backgroundColor: Colors.purple,
          ),
          body: FutureBuilder(
            future: freaseApi(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return const Text('Datos no disponibles');
              } else if (snapshot.hasData) {
                final frase = snapshot.data!['frase'];
                final autor = snapshot.data!['autor'];

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "'$frase",
                      style: const TextStyle(
                        fontSize: 15.0,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text("'$autor".toUpperCase()),
                  ],
                );
              } else {
                return const Text('INFORMACION NULA');
              }
            },
          )),
    );
  }
}
