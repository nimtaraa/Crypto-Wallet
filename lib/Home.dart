import 'package:flutter/material.dart';
import 'package:wallet_app/cointemplate.dart';
import 'package:wallet_app/earn.dart';
import 'package:wallet_app/settingpage.dart';
import 'package:wallet_app/swap.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(186, 0, 0, 0),
      appBar: AppBar(
        leading: IconButton(onPressed:() {
          Navigator.of(context).push(MaterialPageRoute(builder:(context) {
            return setting();
          },) );
        }, icon:Icon(Icons.settings,color: Color.fromARGB(134, 255, 255, 255),),),
        backgroundColor: Color.fromARGB(156, 0, 0, 0),
      ),
      bottomNavigationBar: BottomNavigationBar(

        showUnselectedLabels: true,
        showSelectedLabels: true,
        backgroundColor: const Color.fromARGB(133, 0, 0, 0),
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: Colors.green,fontSize: width/35),
        unselectedLabelStyle: TextStyle(color: Colors.green,fontSize: width/35),
        iconSize: width/14,
      
        items:[
         BottomNavigationBarItem(icon:Padding(
            padding:  EdgeInsets.only(top: height/50,),
            child: Icon(Icons.home,color: Colors.green) ),label:'Home',),     
           
          BottomNavigationBarItem(icon:IconButton(
            onPressed:() {
              Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                  return swap();
                },));
            }, 
            icon:Icon(Icons.swap_horiz_rounded,)),
            label:'Swap',
          ),
          
          BottomNavigationBarItem(
            icon:IconButton(icon:Icon(Icons.money),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                  return earn();
                },));
           },),
            label:"Earn"
          ),
          
          BottomNavigationBarItem(
            icon: IconButton(icon:Icon(Icons.person,color: Colors.grey,),onPressed: () {
               
            },),            
            label: "Profile")
  ]),
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 99,right: 99,top: 8),
              child: Container(
                
                height: height/36,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(0, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Text("257,556.89 USD",style: TextStyle(color: Color.fromARGB(255, 244, 239, 239),fontSize: width/19.9,fontWeight: FontWeight.w900),)),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(right: width/5,left: width/5,top: height/40,bottom: height/60),
              child: Container(
                height: height/3.5,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(image: AssetImage("walletSources/shield.png"),fit: BoxFit.fill),
                ),
              ),
            ),
            
            Center(child: Padding(
              padding:  EdgeInsets.only(bottom: height/60),
              child: Text("Join 70M+ people shaping the future of \n the internet with us" ,style: TextStyle(fontSize: width/23,),textAlign: TextAlign.center,),
            )),
                        
            Padding(
              padding:  EdgeInsets.all(width/30),
              child: GestureDetector(
                onTap: () {
                },
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
            ),
          
          // Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Column(
          //       children: [
          //         Container(
          //           height: 73,
          //           width: double.infinity,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(8),
          //             color: Color.fromARGB(150, 81, 81, 81),
          //           ),
                    
          //           child: Row(
          //             children: [
          //               Padding(
          //                 padding: const EdgeInsets.only(left: 23),
          //                 child: Container(
          //                   width: 33,
          //                   height: 33,
          //                   decoration: BoxDecoration(
          //                     borderRadius: BorderRadius.circular(30),
          //                     color: Color.fromARGB(37, 136, 221, 153),
          //                   ),
          //                   child: Icon(Icons.add,size: 22,color: Color.fromARGB(255, 6, 255, 14)),),
          //               ),
                        
          //               Padding(
          //                 padding: const EdgeInsets.only(top: 18,left:1),
          //                 child: Column(
          //                   children: [
          //                     Text("Add existing wallet",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
          //                     Padding(
          //                       padding: const EdgeInsets.only(left: 16),
          //                       child: Text("import,restore or view-only",style: TextStyle(fontSize: 12,color: Color.fromARGB(144, 255, 255, 255),),),
          //                     )
          //                   ],
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ), 
            Padding(
              padding:  EdgeInsets.only(top: height/45,bottom:height/55,left: width/30),
              child: Text("Popular tokens",style: TextStyle(fontSize: width/25,color: Color.fromARGB(155, 214, 213, 213),fontWeight: FontWeight.bold,),),
            ) ,          
            cointemplate(box:Color.fromARGB(255, 142, 152, 231), name1: "BNB", subname1: "BNB Smart Chain", name2: "\$6,605.70", subname2: "+2.03%"),
            cointemplate(box: Colors.amber, name1: "BTC", subname1: "Bitcoin", name2: "\$63,890.78", subname2: "+1.025%"),
            cointemplate(box: Color.fromARGB(255, 241, 229, 192), name1: "ETH", subname1: "Ethereum", name2: "\$3,342.01", subname2: "+2.61%"),
            cointemplate(box: Colors.amber, name1: "BTC", subname1: "Bitcoin", name2: "\$63,890.78", subname2: "+1.025%"),
            cointemplate(box: Colors.amber, name1: "BTC", subname1: "Bitcoin", name2: "\$63,890.78", subname2: "+1.025%"),
            cointemplate(box: Colors.amber, name1: "BTC", subname1: "Bitcoin", name2: "\$63,890.78", subname2: "+1.025%"),
            SizedBox(height: 30,)
                        ],
        ),
      ),
    );
  }
}