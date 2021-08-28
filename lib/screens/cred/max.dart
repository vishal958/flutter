import 'package:flutter/material.dart';

class CredMax extends StatelessWidget {
  const CredMax({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff2E3B2B),
        padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
        child: Column(
          children: [
            Text(
              'CRED MAX',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 25,
                letterSpacing: 5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'do more with your credit card',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'EXPERIENCE 24X7 INSTANT TRANSFERS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
                fontSize: 13,
                letterSpacing: 1.6,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffD7B1AC),
                    Color(0xffBD7E75),
                    Color(0xff7C423C)
                  ],
                ),
                color: Color(0xff7C423C),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffCD6F65),
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
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'rentpay',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        //color: Colors.amberAccent,
                        padding: EdgeInsets.fromLTRB(3, 3, 10, 3),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text(
                              ' 9 OFFERS INSIDE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 160, 10),
                    child: Text(
                      'pay via credit card, eran upto 45 days of credit period and reward points',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                          height: 35.0,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(Icons.arrow_forward_sharp))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffC9ADFF),
                    Color(0xff7733FF),
                    Color(0xff691FFF),
                    Color(0xff691FFF)
                  ],
                ),
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
              padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'JUST LAUNCHED',
                        style: TextStyle(
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 13,
                            height: 2,
                            backgroundColor: Colors.white),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 160, 10),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        'now pay education fees',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Row(
                      children: [
                        Container(
                            height: 35.0,
                            width: 35,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(Icons.arrow_forward_sharp))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(),
          ],
        ));
  }
}
