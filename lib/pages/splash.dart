import 'dart:async';

import 'package:app/provider_utils/collor_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, '/welcome');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Provider.of<ColorNotifier>(context).mainColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              child: Center(
                child: Text(
                  "GIF WILL STAY HERE"
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
            ),
            SizedBox(height: 20,),
            RichText(
              text: TextSpan(
                text: "elp",
                children: [
                  TextSpan(
                    text: "i",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  TextSpan(
                    text: "s",
                    style: TextStyle(
                      color: Colors.blue
                    )
                  )
                ],
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
