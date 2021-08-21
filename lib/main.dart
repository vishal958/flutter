import 'dart:ui';

import 'package:flutter/material.dart';
import 'layoutpractice.dart';
import 'dashboard.dart';
import 'homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: HomeScreen(),
      theme: ThemeData(fontFamily: "Circular"),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Apps'),
      ),
      // body: LayoutPractice(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: TextButton(
            child: Text('Rolling Dice'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DiceScreen();
                }),
              );
            },
          )),
          Center(
              child: TextButton(
            child: Text('Wallet'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DashboardPage();
                }),
              );
            },
          )),
          Center(
              child: TextButton(
            child: Text('Detail'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DetailsScreen();
                }),
              );
            },
          )),
          Center(
              child: TextButton(
            child: Text('Layout Practice'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return LayoutPractice();
                }),
              );
            },
          )),
        ],
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  // const DetailsScreen({ Key? key }) : super(key: key)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('POP'),
      )),
    );
  }
}
