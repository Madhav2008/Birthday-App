import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'dart:math';

import 'dart:async';
import 'Poem.dart';

// ignore: camel_case_types
class startingScreen extends StatefulWidget {
  @override
  _startingScreenState createState() => _startingScreenState();
}

// ignore: camel_case_types
class _startingScreenState extends State<startingScreen> {
  ConfettiController _controllerCenterRight;
  ConfettiController _controllerCenterLeft;
  Timer _timer;
  int _start = 5;
  void startTimer() {
    const oneSec = const Duration(seconds: 3);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_start < 1) {
            _controllerCenterRight.play();
            _controllerCenterLeft.play();
            timer.cancel();
          } else {
            _start = _start - 1;
          }
        },
      ),
    );
  }

  @override
  void initState() {
    _controllerCenterRight =
        ConfettiController(duration: const Duration(seconds: 10));
    _controllerCenterLeft =
        ConfettiController(duration: const Duration(seconds: 10));
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    _controllerCenterRight.dispose();
    _controllerCenterLeft.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    startTimer();
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.pinkAccent,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Poem(),
              ));
        },
        child: Icon(
          Icons.play_circle_fill_sharp,
          color: Colors.white,
        ),
        backgroundColor: Color(0xff13195b),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: 220,
              //  color: Colors.pinkAccent,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("image/friends.jpg"), fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "$_start",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 50),
                )),
          ),
          Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                child: ConfettiWidget(
                  confettiController: _controllerCenterRight,
                  blastDirection: pi, // radial value - LEFT
                  particleDrag: 0.05, // apply drag to the confetti
                  emissionFrequency: 0.05, // how often it should emit
                  numberOfParticles: 20, // number of particles to emit
                  gravity: 0.05, // gravity - or fall speed
                  shouldLoop: false,
                  colors: const [
                    Colors.green,
                    Colors.blue,
                    Colors.pink
                  ], // manually specify the colors to be used
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: ConfettiWidget(
                  confettiController: _controllerCenterLeft,
                  blastDirection: 0, // radial value - RIGHT
                  emissionFrequency: 0.6,
                  minimumSize: const Size(10,
                      10), // set the minimum potential size for the confetti (width, height)
                  maximumSize: const Size(50,
                      50), // set the maximum potential size for the confetti (width, height)
                  numberOfParticles: 1,
                  gravity: 0.1,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 20),
                    child: Text(
                      " Happiee ",
                      style: TextStyle(
                          color: Color(0xff13195b),
                          fontWeight: FontWeight.w900,
                          fontSize: 90),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0),
                    child: Text(
                      "Birthday ",
                      style: TextStyle(
                          color: Color(0xff13195b),
                          fontWeight: FontWeight.w900,
                          fontSize: 50),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
