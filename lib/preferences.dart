import 'package:flutter/material.dart';

class preferences extends StatefulWidget {
  const preferences({super.key});

  @override
  State<preferences> createState() => _preferencesState();
}

class _preferencesState extends State<preferences> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;     
    return Scaffold(
  backgroundColor: Color.fromARGB(186, 0, 0, 0),

        appBar: AppBar(
          backgroundColor: Colors.transparent,
        title:Text("Preferences",style: TextStyle(color: Colors.white,fontSize: width/22),)
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text("Currency",style: TextStyle(color: Colors.white,fontSize: width/21.5),),
                      Text("USD")
                    ],
                  )
                ],
              )
            ],
          ),
        ),
    );
  }
}