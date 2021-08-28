import 'package:flutter/material.dart';

class Benefits extends StatelessWidget {
  const Benefits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      color: const Color(0xff2E3B2B),
      child: ListView(
        children: [
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
                                Text('BANK REWARD POINTS',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffB8B8B8),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.circle,
                                size: 60, color: Colors.lightBlueAccent),
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
                                Text('XXXX XX 6448',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffB8B8B8),
                                    )),
                                Text('Redeem',
                                    style: TextStyle(
                                      color: Color(0xff3600A3),
                                    )),
                              ],
                            ),
                            Text('2166',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff141414),
                                ))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.circle,
                                size: 60, color: Colors.redAccent),
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
                              ],
                            ),
                            Text('na',
                                style: TextStyle(
                                  fontSize: 20,
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
                                Text('OFFERS (709)',
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
                            children: []),
                      ],
                    ),
                  ))),
        ],
      ),
    );
    ;
  }
}
