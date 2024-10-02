import 'package:flutter/material.dart';
import 'package:kuis_124220026_intanmerlinda/login_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuis Aplikasi Bela Negara',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(), // Halaman awal adalah halaman login
    );
  }
}