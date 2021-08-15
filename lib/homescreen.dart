import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  late AnimationController _controller;
  late CurvedAnimation animation;
  int color = 200;

  @override
  void initState() {
    super.initState();
    animate();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  animate() {
    _controller = AnimationController(
      duration: Duration(milliseconds: 1000),
      vsync: this,
    );
    animation = CurvedAnimation(parent: _controller, curve: Curves.bounceOut);
    animation.addListener(() {
      setState(() {});
      // print(_controller.value);
    });
    /* _controller.addListener(() {
      print(_controller.value);
    }); */
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          leftDiceNumber = Random().nextInt(6) + 1;
          rightDiceNumber = Random().nextInt(6) + 1;
          color = (color * animation.value).toInt();
        });
        // print('Completed');
        _controller.reverse();
      }
    });
    /* _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        print('Completed');
        _controller.reverse();
      }
    }); */
  }

  void roll() {
    _controller.forward();
    /* setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    }); */
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
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
                  'Total ${leftDiceNumber + rightDiceNumber}',
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
