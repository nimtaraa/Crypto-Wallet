import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/Home.dart';
import 'package:wallet_app/splashscreen.dart';

void main() {

  runApp(
    DevicePreview(

       builder:(context) => wallet(),  

        )
    );
}

class wallet extends StatelessWidget {
  const wallet({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    locale: DevicePreview.locale(context), 
    builder: DevicePreview.appBuilder, 

      debugShowCheckedModeBanner: false,
      title: "Wallet",
      home: splashscreen(),
      theme: ThemeData(
         fontFamily: "heading",
        primaryColor: Color.fromARGB(255, 3, 36, 62),
        brightness: Brightness.dark,
      ),
    );
  }
}
