import 'package:flutter/material.dart';
import 'controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Binus Square Best Laundry',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Product Sans',
      ),
      home: Laundry(),
    );
  }
}

