import 'package:flutter/material.dart';

class earncontainer extends StatefulWidget {
  String img;
  String txt1;
  String txt2;
   earncontainer({
    required this.img,
    required this.txt1,
    required this.txt2,
    super.key});

  @override
  State<earncontainer> createState() => _earncontainerState();
}

class _earncontainerState extends State<earncontainer> {
  @override
  Widget build(BuildContext context) {
        final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;   
    return Padding(
      padding:  EdgeInsets.only(bottom: height/56.26),
      child: Container(
         width: double.infinity,
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: height/21.1,
                  width: width/9.97,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(widget.img),fit: BoxFit.contain),
                  ),
                ),
                SizedBox(width: width/39.9,),

                Text(widget.txt1,style: TextStyle(color:const Color.fromARGB(137, 255, 255, 255),fontSize: width/26.6),),
              ],
            ),
             Text(widget.txt2,style: TextStyle(color: Color.fromARGB(255,73,255,145),fontSize: width/26.6),)
          ],
         ),
      ),
    );
  }
}