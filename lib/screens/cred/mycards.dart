import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  const MyCards({Key? key}) : super(key: key);

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
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
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
                          'amount to be paid',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('10,153',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 20)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('NO  HIDDEN CHARGES',
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'payment due on 1 card',
                          style: TextStyle(
                            color: Color(0xffB8B8B8),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              // flex: 2,
              child: Container(
                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('your cards',
                          style: TextStyle(
                            color: Color(0xffB8B8B8),
                          )),
                      Container(
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff091504),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff474747),
                                blurRadius: 4,
                                spreadRadius: 0,
                                offset: Offset(-5, -5)),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                            child: Text('Add Cards',
                                style: TextStyle(
                                  color: Color(0xffB8B8B8),
                                ))),
                      )
                    ],
                  ))),
          Expanded(
              // flex: 4,
              child: Container(
                  height: 300,
                  padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff5c5c5c),
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
                            Text('HDFC REGALIA',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xffB8B8B8),
                                )),
                            Text('HDFC',
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('4854 98XX XXXX 6448',
                                      style: TextStyle(
                                        fontSize: 15,
                                        letterSpacing: 3,
                                        color: Color(0xffB8B8B8),
                                      )),
                                ),
                                Text('VISHAL MAURYA',
                                    style: TextStyle(
                                      color: Color(0xffB8B8B8),
                                    )),
                              ],
                            ),
                            Text('VISA',
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
          Expanded(
              // flex: 4,
              child: Container(
                  height: 300,
                  padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff5c5c5c),
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
                            Text('HDFC REGALIA',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xffB8B8B8),
                                )),
                            Text('HDFC',
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('4854 98XX XXXX 6448',
                                      style: TextStyle(
                                        fontSize: 15,
                                        letterSpacing: 3,
                                        color: Color(0xffB8B8B8),
                                      )),
                                ),
                                Text('VISHAL MAURYA',
                                    style: TextStyle(
                                      color: Color(0xffB8B8B8),
                                    )),
                              ],
                            ),
                            Text('VISA',
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
          Expanded(
              // flex: 1,
              child: Container(
                  height: 300,
                  padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff5c5c5c),
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
                            Text('HDFC REGALIA',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xffB8B8B8),
                                )),
                            Text('HDFC',
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('4854 98XX XXXX 6448',
                                      style: TextStyle(
                                        fontSize: 15,
                                        letterSpacing: 3,
                                        color: Color(0xffB8B8B8),
                                      )),
                                ),
                                Text('VISHAL MAURYA',
                                    style: TextStyle(
                                      color: Color(0xffB8B8B8),
                                    )),
                              ],
                            ),
                            Text('VISA',
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