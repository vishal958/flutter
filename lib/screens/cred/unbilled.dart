import 'package:flutter/material.dart';

class Unbilled extends StatelessWidget {
  const Unbilled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      color: const Color(0xff2E3B2B),
      child: ListView(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                decoration: BoxDecoration(
                  color: Color(0xff1f1f1f),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff474747),
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: Offset(4, 4),
                    ),
                    BoxShadow(
                      color: Color(0xff141414),
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: Offset(-4, -4),
                    )
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'your total unbilled',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('37916.26',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 20)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('last transaction detected today',
                            style:
                                TextStyle(color: Colors.green, fontSize: 13)),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Icon(Icons.circle,
                                  color: Color(0xffa3a3a3), size: 60),
                              Icon(Icons.circle,
                                  color: Color(0xffa3a3a3), size: 60),
                              SizedBox(
                                width: 120,
                              ),
                              Expanded(
                                child: Icon(Icons.circle,
                                    color: Color(0xffa3a3a3), size: 60),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        '63130.74 available credit',
                        style: TextStyle(
                          color: Color(0xffB8B8B8),
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: Container(
                  height: 300,
                  padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff141414),
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: Offset(-5, -5)),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text('TOTAL UNBILLED',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffB8B8B8),
                                    )),
                                Text('across two cards',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xffB8B8B8),
                                    )),
                              ],
                            ),
                            Text('37916',
                                style: TextStyle(
                                  fontSize: 20,
                                  letterSpacing: 5,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff220066),
                                ))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.circle),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('icici amazon pay',
                                      style: TextStyle(
                                        fontSize: 15,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff141414),
                                      )),
                                ),
                                Text('XXXX XX 0000',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffB8B8B8),
                                    )),
                                Text('next statement in 6 days',
                                    style: TextStyle(
                                      color: Color(0xff5c5c5c),
                                    )),
                              ],
                            ),
                            Text('30846',
                                style: TextStyle(
                                  fontSize: 17,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff141414),
                                ))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.circle),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('hdfc regalia',
                                      style: TextStyle(
                                        fontSize: 15,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff141414),
                                      )),
                                ),
                                Text('XXXX XX 0000',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffB8B8B8),
                                    )),
                                Text('next statement in 28 days',
                                    style: TextStyle(
                                      color: Color(0xff5c5c5c),
                                    )),
                              ],
                            ),
                            Text('7897',
                                style: TextStyle(
                                  fontSize: 17,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff141414),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ))),
          Expanded(
              child: Container(
                  height: 300,
                  padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff141414),
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: Offset(-5, -5)),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text('RECENT TRANSACTION',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffB8B8B8),
                                    )),
                                Text('across two cards',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xffB8B8B8),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.circle),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('no broker',
                                      style: TextStyle(
                                        fontSize: 15,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff5c5c5c),
                                      )),
                                ),
                                Text('XXXX XX 0000',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffB8B8B8),
                                    )),
                                Text('22 Aug',
                                    style: TextStyle(
                                      color: Color(0xff5c5c5c),
                                    )),
                              ],
                            ),
                            Text('7070',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffB8B8B8),
                                ))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.circle),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('cred',
                                      style: TextStyle(
                                        fontSize: 15,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff5c5c5c),
                                      )),
                                ),
                                Text('XXXX XX 0000',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffB8B8B8),
                                    )),
                                Text('12 Aug',
                                    style: TextStyle(
                                      color: Color(0xff5c5c5c),
                                    )),
                              ],
                            ),
                            Text('10000',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffB8B8B8),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ))),
        ],
      ),
    );
  }
}
