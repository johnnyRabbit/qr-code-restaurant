import 'package:flutter/material.dart';
import 'pages/home_screen.dart';

void main() {
  runApp(RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
