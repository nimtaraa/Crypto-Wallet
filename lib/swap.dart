import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:wallet_app/Home.dart';
import 'package:wallet_app/earn.dart';

class swap extends StatefulWidget {
  const swap({super.key});

  @override
  State<swap> createState() => _swapState();
}

class _swapState extends State<swap> {
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

        
      }
    });
  });
}
  bool change=false;

   
@override


  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;   


 
    return Scaffold(
        backgroundColor: Color.fromARGB(186, 0, 0, 0),
        
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed:() {
              
            },
          icon:Icon(Icons.settings,color: Color.fromARGB(134, 255, 255, 255),))
          ],
          backgroundColor: Colors.transparent,
          title: Center(child: Text("Swap",style: TextStyle(color:Colors.white,fontSize: width/22,fontWeight: FontWeight.bold),)),
         ),
        
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          backgroundColor: const Color.fromARGB(133, 0, 0, 0),
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(color: Colors.green,fontSize: width/35),
          unselectedLabelStyle: TextStyle(color: Colors.green,fontSize: width/35),
          iconSize: width/14,
          items:[
            BottomNavigationBarItem(
              icon:
              IconButton(icon: Icon(Icons.home),color: Colors.grey,onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                  return homepage();
              },));
                            },),
              label:'Home',),     
            
            BottomNavigationBarItem(
              icon:IconButton(onPressed:() {
            }, 
              icon:Icon(Icons.swap_horiz_rounded,color: Colors.green,)),
              label:'Swap'),

            BottomNavigationBarItem(
              icon:IconButton(icon:Icon(Icons.money,color: Colors.grey,),
              onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                return earn();
              },));
            },),
              label:"Earn"),
           
           BottomNavigationBarItem(
            icon: IconButton(icon:Icon(Icons.person,color: Colors.grey,),onPressed: () {
               
            },),
            label: "Profile")
      ]),

        body:Padding(
          padding:  EdgeInsets.only(left: width/35,right: width/35),
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 33, 33, 33),
                          borderRadius: BorderRadius.circular(13)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: width/30,right: width/30,top:height/70,bottom: height/70),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("From",style: TextStyle(color: Color.fromARGB(134, 255, 255, 255),fontSize: width/37),),
                                      SizedBox(width: 5,),
                                      Container(
                                        height: 20,
                                        width: 20,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            shape: BoxShape.circle,
                                            image: DecorationImage(image: AssetImage(change ?"walletSources/whitebox.png":"walletSources/rubicbox.png"),fit: BoxFit.contain)
                                          ),
                                      ),
                                      SizedBox(width: 5,),
                                      Text(change?"BNB Beacon Chain":"BNB Smart Chain",style: TextStyle(color: Color.fromARGB(134, 255, 255, 255),fontSize: width/37),)
                                  
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(left: width/35,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            shape: BoxShape.circle,
                                            image: DecorationImage(image: AssetImage(change ?"walletSources/whitebox.png":"walletSources/rubicbox.png"),fit: BoxFit.contain)
                                          ),
                                      ),
                                      SizedBox(width: 10,),
                                      Text("BNB",style: TextStyle(color: Colors.white,fontSize: width/23),),
                                      SizedBox(width: 4,),
                                      Icon(Icons.arrow_forward_ios,size: width/39,color: Color.fromARGB(134, 255, 255, 255))
                                    ],
                                  ),
                                )
                              ],
                            ),
                              Padding(
                                padding:  EdgeInsets.only(left: width/30,right: width/30,top:height/70,bottom: height/70),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.wallet,size: width/27,color: Color.fromARGB(134, 255, 255, 255)),
                                        Padding(
                                          padding:  EdgeInsets.only(left: width/37,right: width/37),
                                          child: Text("0",style: TextStyle(fontSize:width/26.6),),
                                      ),
                                      Container(
                                        height:height/39,
                                        width: width/10,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(37, 136, 221, 153)
                                        ),
                                        child: Center(child: Text("Buy",style: TextStyle(color: Color.fromARGB(255, 6, 255, 14),fontSize: width/33.2),)),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height/84.4,),
                                  Text("0",style: TextStyle(color: Colors.white,fontSize: width/15.96),),
                                  SizedBox(height: height/20,)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: height/84.4,),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 33, 33, 33),
                          borderRadius: BorderRadius.circular(13)
                        ),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(left: width/35,right: width/35,top:height/70,bottom: height/70),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("To",style: TextStyle(color: Color.fromARGB(134, 255, 255, 255),fontSize: width/39.9),),
                                          SizedBox(width: 5,),
                                          Container(
                                            height: 16,
                                            width: 16,
                                              decoration: BoxDecoration(
                                                color: Colors.yellow,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(image: AssetImage(change ?"walletSources/rubicbox.png":"walletSources/whitebox.png"),fit: BoxFit.contain)
                                              ),
                                          ),
                                          SizedBox(width: 5,),
                                          Text(change?"BNB Smart Chain":"BNB Beacon Chain",style: TextStyle(color: Color.fromARGB(134, 255, 255, 255),fontSize: width/39.9),)
                                      
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(left: width/35,),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 37,
                                            width: 37,
                                              decoration: BoxDecoration(
                                                color: Colors.yellow,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(image: AssetImage(change ?"walletSources/rubicbox.png":"walletSources/whitebox.png"),fit: BoxFit.contain)
                                              ),
                                          ),
                                          SizedBox(width: width/35,),
                                          Text("BNB",style: TextStyle(color: Colors.white,fontSize: width/23),),
                                          SizedBox(width: 4,),
                                          Icon(Icons.arrow_forward_ios,size: width/39,color: Color.fromARGB(134, 255, 255, 255))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                      padding:  EdgeInsets.only(left: width/35,right: width/35,top:height/70,bottom: height/70),
                                    child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.wallet,size: width/27,color: Color.fromARGB(134, 255, 255, 255)),
                                          Padding(
                                            padding:  EdgeInsets.only(left: width/35,right: width/78),
                                            child: Text("0",style: TextStyle(fontSize:width/26.6),),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Text("0",style: TextStyle(color: Colors.white,fontSize: width/15.96),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: height/33.76,),
                            Container(
                              width: double.infinity,
                              child: Divider(
                                height: height/422,
                                color: Colors.black,
                                thickness: height/422,
                                
                              ),
                            ),
                          Padding(
                            padding:  EdgeInsets.only(left: width/20,top: height/70,bottom: height/70),
                            child: CircularPercentIndicator(
                                radius:width/32.6,
                                lineWidth: width/109.75, 
                                percent:percent,      
                                animation: true,
                                progressColor: Colors.white,
                                animationDuration: 300,
                                
                                
                              ),
                          ),                            
                          ],
                        ),
                        
                  ),                
                    ],
                  ),
               
                  Positioned(
                    top: 110,
                    left: 167,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(186, 0, 0, 0),
                      ),
                      child: IconButton(onPressed:() {
                      setState(() {
                         change=!change;
                         percent=0.0;
                         startTimer();
                      });

                      }, 
                      icon:Icon(Icons.swap_vertical_circle_sharp)),
                    ),
                  )
                ],
               ),
               SizedBox(height: 15,),
               Container(
                height: height/16.2,
                width: double.infinity,
                 child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255,73,255,145)
                  ),
                  onPressed:() {   
            showModalBottomSheet(
              
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding:  EdgeInsets.only(top: height/29),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: width/3),
                                child: Text("Connect wallet",style:TextStyle(color: Colors.white,fontSize: width/22)),
                              ),
                              IconButton(onPressed:() {
                                Navigator.of(context).pop();
                              }, icon:Icon(Icons.close,size: width/22,color: Colors.white,))
                            ],
                          ),
 Padding(
   padding:  EdgeInsets.only(top: height/30),
   child: Container(
                  height: height/6,
                  width:width/2.6,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(image: AssetImage("walletSources/shield.png"),fit: BoxFit.fill),
                  ),
                ),
 ),     
                          Padding(
                            padding:  EdgeInsets.only(top: height/25,left: width/30,right: width/30),
                            child: Container(
                                              height: height/11,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                                color: Color.fromARGB(150, 81, 81, 81),
                                              ),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 23),
                                                    child: Container(
                            width: width/13,
                            height: height/30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color.fromARGB(37, 136, 221, 153),
                            ),
                            child: Icon(Icons.add,size: width/20,color: Color.fromARGB(255, 6, 255, 14)),),
                                                  ),
                                                  
                                                  Padding(
                                                    padding:  EdgeInsets.only(top: height/45),
                                                    child: Expanded(
                            child: Padding(
                              padding:  EdgeInsets.only(left: width/25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Create a new wallet",style: TextStyle(fontSize: width/24,fontWeight: FontWeight.bold,),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 1),
                                    child: Text("Create a new multi-chain wallet",style: TextStyle(fontSize: width/35,color: Color.fromARGB(144, 255, 255, 255),),),
                                  )
                                ],
                              ),
                            ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                );   
              }
                  );  
                                 
                   }, child: Text("Connect Wallet",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold))),
               )
             ],
           ),
         ) ,
    );
  }
}