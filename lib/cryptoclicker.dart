import 'package:flutter/material.dart';

class cryptopicker extends StatefulWidget {
  const cryptopicker({super.key});

  @override
  State<cryptopicker> createState() => _cryptopickerState();
}

class _cryptopickerState extends State<cryptopicker> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;    
    return Container(
       height: height*2,
       child: Container(
        height:height,
        width: double.infinity,
        color: Colors.amber,
       ),
    );
  }
}