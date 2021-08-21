import 'dart:ui';
import 'package:flutter/material.dart';

class LayoutPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layout')),
      body: Column(
        children: [
          imageSection(),
          titleSection,
          buttonSection,
          bodySection,
        ],
      ),
    );
  }
}

Widget imageSection() => Container(
        child: SizedBox(
      child: Container(
          decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.red[900]!.withOpacity(0.3),
            blurRadius: 50,
            spreadRadius: 2,
            offset: Offset(20, 0)),
        BoxShadow(
            color: Colors.blue[900]!.withOpacity(0.2),
            blurRadius: 20,
            spreadRadius: 2,
            offset: Offset(20, 0)),
      ])),
      height: 200,
    ));

Widget bodySection = Container(
  margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
  child: Text(
    'Umargam Beach is popular tourist attraction in the town of Umargam. The location is famous for its "Chowpatty style" street food, which includes items such as Bhelpuri, Panipuri, Sevpuri, and vada pav. Horse-pulled carriages offer rides to tourists, and the beach is a popular site in the city for the annual Ganesh Chaturthi celebration and other festival like Holi, beach is mostly crowded during evening time. There is a small place named Sarai Fatak which is situated near to Sarigam. It is very natural place.',
  ),
);

Widget titleSection = Container(
  child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Container(
                    child: Text(
                  'Umbergaon',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
              Text(
                'Gujarat, India',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Icon(
            Icons.star,
            color: Colors.red[500],
          ),
        ),
        Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text('9860825722'))
      ],
    ),
  ),
);

Widget buttonSection = Container(
  child: Row(
    children: [
      buttonColumn(Icons.call, Colors.blue[400], 'Call'),
      buttonColumn(Icons.near_me, Colors.blue[400], 'Route'),
      buttonColumn(Icons.share, Colors.blue[400], 'Share'),
    ],
  ),
);

Expanded buttonColumn(icon, color, label) => Expanded(
      child: Column(
        children: [Icon(icon, color: color), Text(label)],
      ),
    );
