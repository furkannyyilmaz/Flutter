import 'package:flutter/material.dart';

import 'anaEkran.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hesap Makinesi",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basit hesap makinesi"),
      ),
      body: AnaEkran(),
    );
  }
}

