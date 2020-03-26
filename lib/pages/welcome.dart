import 'dart:async';

import 'package:app/provider_utils/collor_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  var size = 250.0;
  var childSize = 150.0;
  double sizeFactor = 5;

  void startAnimation() {
    Timer(Duration(seconds: 1), () {
      setState(() {
        childSize = 200;
        sizeFactor = 21.5;
        size = 220;
      });
    });
    Timer(Duration(seconds: 3), () {
      setState(() {
        size = 250.0;
        childSize = 150.0;
        sizeFactor = 5;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Stack(
                  children: <Widget>[
                    AnimatedContainer(
                      width: size,
                      height: size,
                      duration: Duration(seconds: 2),
                      decoration: BoxDecoration(
                          color: Color(0xff657ee0),
                          borderRadius: BorderRadius.circular(270)),
                    ),
                    AnimatedPositioned(
                      duration: Duration(seconds: 2),
                      left: size / sizeFactor,
                      top: size / sizeFactor,
                      child: AnimatedContainer(
                        width: childSize,
                        height: childSize,
                        duration: Duration(seconds: 2),
                        decoration: BoxDecoration(
                            color:
                                Provider.of<ColorNotifier>(context).mainColor,
                            borderRadius: BorderRadius.circular(120)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  child: Text(
                    "Skip",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  textColor: Provider.of<ColorNotifier>(context).mainColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
