import 'package:flutter/material.dart';
import 'dart:math';

class DiceScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<DiceScreen>
    with SingleTickerProviderStateMixin {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  late AnimationController _controller;
  late CurvedAnimation animation;
  late int total;

  @override
  void initState() {
    super.initState();
    total = leftDiceNumber + rightDiceNumber;
    animate();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  animate() {
    _controller = AnimationController(
      duration: Duration(milliseconds: 2000),
      vsync: this,
    );
    animation =
        CurvedAnimation(parent: _controller, curve: Curves.easeInOutCubic);
    animation.addListener(() {
      setState(() {});
    });
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          leftDiceNumber = Random().nextInt(6) + 1;
          rightDiceNumber = Random().nextInt(6) + 1;
        });
        _controller.reverse().then((value) => {
              setState(() {
                total = leftDiceNumber + rightDiceNumber;
              })
            });
      }
    });
  }

  void roll() {
    _controller.forward();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // centerTitle: true,
          title: Text('Rollling Dice'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onDoubleTap: roll,
                    child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Transform.rotate(
                          angle: -100 * animation.value / 4,
                          child: Image(
                              height: 200 - (animation.value) * 200,
                              image: AssetImage(
                                  'images/dice-png-$leftDiceNumber.png')),
                        )),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onDoubleTap: roll,
                    child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Transform.rotate(
                          angle: -100 * animation.value / 4,
                          child: Image(
                              height: 200 - (animation.value) * 200,
                              image: AssetImage(
                                  'images/dice-png-$rightDiceNumber.png')),
                        )),
                  )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    width: 150,
                    height: 40,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blueAccent),
                        ),
                        onPressed: roll,
                        child: Text('Roll'))),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Total $total',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
