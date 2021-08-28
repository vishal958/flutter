import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/cred/max.dart';
import 'package:flutter_application_1/screens/cred/mycards.dart';
import 'benefits.dart';
import 'unbilled.dart';

class CredApp extends StatelessWidget {
  const CredApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff2E3B2B),
          toolbarHeight: 30,
          bottom: TabBar(
            indicatorWeight: 0,
            indicatorPadding: EdgeInsets.all(10),
            isScrollable: true,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50), // Creates border
            ),
            tabs: [
              Text('my cards', style: TextStyle(fontSize: 20)),
              Text('unbilled', style: TextStyle(fontSize: 20)),
              Text('max', style: TextStyle(fontSize: 20)),
              Text('benefit', style: TextStyle(fontSize: 20)),
              Text('manage', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
        // appBar: AppBar(),
        body: TabBarView(children: [
          //MyCards(),
          MyCards(),
          Unbilled(),
          CredMax(),
          Benefits(),
          Text('Fifth')
        ]),
      ),
    );
  }
}
