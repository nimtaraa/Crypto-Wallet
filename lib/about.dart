import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;     
    return Scaffold(
  backgroundColor: Color.fromARGB(186, 0, 0, 0),

   appBar: AppBar(
    title: Text("About",style: TextStyle(color: Colors.white,fontSize: width/21.5),),
            automaticallyImplyLeading: false,
        leading: IconButton(onPressed:() {
            Navigator.of(context).pop();
      
        }, icon:Icon(Icons.arrow_back,color:Color.fromARGB(134, 255, 255, 255),size: width/19,)),
        backgroundColor: Colors.transparent,
   ),
   body: SingleChildScrollView(
    child: Padding(
      padding:  EdgeInsets.only(left: width/20,right: width/20,top: height/40),
      child: Column(
        children: [
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Make a suggestion",style: TextStyle(color: Colors.white,fontSize: width/21.5)),
              Text("Let us Know if you have an idea to improve the app",style: TextStyle(color: const Color.fromARGB(108, 255, 255, 255),fontSize: width/32),)
            ],
          ),
                  Icon(Icons.arrow_forward_ios,color:Color.fromARGB(134, 255, 255, 255),size: width/30,),
      
        ],
       ),
       SizedBox(height: height/30,),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Privacy policies",style: TextStyle(color: Colors.white,fontSize: width/21.5)),
            ],
          ),
              Icon(Icons.arrow_forward_ios,color:Color.fromARGB(134, 255, 255, 255),size: width/30,),
              
        ],
       ),
       SizedBox(height: height/30,),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Terms of Service",style: TextStyle(color: Colors.white,fontSize: width/21.5)),
            ],
          ),
              Icon(Icons.arrow_forward_ios,color:Color.fromARGB(134, 255, 255, 255),size: width/30,),
              
        ],
       ) ,
       SizedBox(height: height/30,),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Version 11.4.1(996)",style: TextStyle(color: Colors.white,fontSize: width/21.5)),
            ],
          ),
              
        ],
       )               
        ],
      ),
    ),
   ),
    );
  }
}