

import 'package:flutter/material.dart';
import 'package:wallet_app/settingadding.dart';

class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;       
    return Scaffold(
  backgroundColor: Color.fromARGB(186, 0, 0, 0),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed:() {
            Navigator.of(context).pop();
      
        }, icon:Icon(Icons.arrow_back,color:Color.fromARGB(134, 255, 255, 255),size: width/19,)),
        backgroundColor: Colors.transparent,
        title:Text("Settings",style: TextStyle(color: Colors.white,fontSize: width/22),)
,
      ),
     body: Padding(
       padding:  EdgeInsets.only(right: width/20,left: width/20),
       child: SingleChildScrollView(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            settingadding(txt:'Preferences', icon123: Icons.settings,),
                              Padding(
                                padding:  EdgeInsets.only(top: height/24),
                                child: Container(
                                  width: double.infinity,
                                  child: Divider(
                                    height: height/422,
                                    color: Color.fromARGB(55, 255, 255, 255),
                                    thickness: height/522,
                                    
                                  ),
                                ),
                              ),
            settingadding(txt: 'Help center', icon123: Icons.question_mark_rounded,),
            settingadding(txt: 'Support',     icon123: Icons.headphones,),
            settingadding(txt: 'About',       icon123: Icons.shield,),
                              Padding(
                                padding:  EdgeInsets.only(top: height/24),
                                child: Container(
                                  width: double.infinity,
                                  child: Divider(
                                    height: height/422,
                                    color: Color.fromARGB(55, 255, 255, 255),
                                    thickness: height/522,
                                    
                                  ),
                                ),
                              ),          
            settingadding(txt: 'X (formerly Twitter)', icon123:Icons.circle),
            settingadding(txt: 'Telegram', icon123: Icons.telegram,),
            settingadding(txt: 'Facebook', icon123: Icons.facebook,),
            settingadding(txt: 'Reddit', icon123: Icons.reddit,),
            settingadding(txt: 'Youtube', icon123: Icons.circle,),
            settingadding(txt: 'Instagram', icon123: Icons.circle,),
         
         
         
         
          ],
         ),
       ),
     ),
    );
  }
}
























































































































































