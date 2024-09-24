import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wallet_app/about.dart';
import 'package:wallet_app/preferences.dart';

class settingadding extends StatefulWidget {
  String txt;
  IconData icon123;
   settingadding({
    required this.txt,
    required this.icon123,
    
    super.key});

  @override
  State<settingadding> createState() => _settingaddingState();
}

class _settingaddingState extends State<settingadding> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;     
    return Padding(
      padding:  EdgeInsets.only(top: height/27),
      child: GestureDetector(
        onTap: () {
          if (widget.txt=="Preferences") {

            Navigator.of(context).push(MaterialPageRoute(builder:(context) {
              return preferences();
            },));

          }
          else if(widget.txt=="About"){
            Navigator.of(context).push(MaterialPageRoute(builder:(context) {
              return about();
            },));

          }
        },
        child: Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(widget.icon123,color:Color.fromARGB(134, 255, 255, 255),size: width/19,),
                SizedBox(width: width/21,),
                Text(widget.txt,style: TextStyle(color: Colors.white,fontSize: width/21.5),)
              ],
            ),
                Icon(Icons.arrow_forward_ios,color:Color.fromARGB(134, 255, 255, 255),size: width/30,),
        
          ],
        ),
        
        ),
      ),
    );
  }
}