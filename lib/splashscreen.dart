import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:wallet_app/Home.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

double percent=0.0;

@override
void initState(){
  super.initState();
  startTimer();
}
void startTimer(){
  Timer.periodic(Duration(seconds: 1), (timer) { 
    setState(() {
      if (percent<1.0) {
        percent+=0.2;
      } else {
        timer.cancel();
        Navigator.of(context).push(MaterialPageRoute(builder:(context) {
          return homepage();
        },));
        
      }
    });
  });
}
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 270,
            width: double.infinity,
            child: LottieBuilder.asset("walletSources/third.json"),
          )
        ],
      ),
    );
  }
}
