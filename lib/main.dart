import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/secons-screen.dart';
import 'package:provider/provider.dart';
import 'layoutpractice.dart';
import 'dashboard.dart';
import 'homescreen.dart';
import './screens/counter-screen.dart';
import './screens/cred//cred.dart';
import './screens/secons-screen.dart';
import 'package:flutter_application_1/providers/counter-provider.dart';
import 'package:flutter_application_1/providers/shopping-cart-provider.dart';

void main() => runApp(MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) => Counter(),
      ),
      ChangeNotifierProvider(create: (_) => Shoppingcart()),
    ], child: MyApp()));

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
            child: Text('Counter-Screen'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return CredApp();
                }),
              );
            },
          )),
          Center(
              child: TextButton(
            child: Text('Shopping-Screen'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ShoppingScreen();
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.greenAccent),
            tabs: [
              Tab(icon: Icon(Icons.flight)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_car)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.flight, size: 350),
            CredApp(),
            Icon(Icons.directions_car, size: 350),
          ],
        ),
      ),
    );
  }
}
