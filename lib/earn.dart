import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wallet_app/Home.dart';
import 'package:wallet_app/earncontainer.dart';

class earn extends StatefulWidget {
  const earn({super.key});

  @override
  State<earn> createState() => _earnState();
}

class _earnState extends State<earn> {
  @override
  
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;       
    return Scaffold(
  backgroundColor: Color.fromARGB(186, 0, 0, 0),

appBar: AppBar(
  backgroundColor: Colors.transparent,
  automaticallyImplyLeading: false,
  title: Center(child: Text("Earn",style: TextStyle(color:Colors.white,fontSize: width/22,fontWeight: FontWeight.bold)),),
),


      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        backgroundColor: const Color.fromARGB(133, 0, 0, 0),
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: Colors.green,fontSize: width/35),
        unselectedLabelStyle: TextStyle(color: Colors.green,fontSize: width/35),
        iconSize:width/14 ,
      
        items:[
         
          BottomNavigationBarItem(icon:Padding(
            padding: const EdgeInsets.only(top: 5,),
            child: IconButton(icon: Icon(Icons.home),color: Colors.grey,onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                return homepage();
              },));
            },),
          ),label:'Home',),     
           BottomNavigationBarItem(icon:IconButton(onPressed:() {

           }, icon:Icon(Icons.swap_horiz_rounded,)),label:'Swap'),

           BottomNavigationBarItem(icon:IconButton(icon:Icon(Icons.money,color: Colors.green,),onPressed: () {
             Navigator.of(context).push(MaterialPageRoute(builder:(context) {
  return earn();
},));
           },),label:"Earn"),
           BottomNavigationBarItem(icon: IconButton(icon:Icon(Icons.person), onPressed: () {  },),label: "Profile")





      ]),



        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left:width/39.9 ,right: width/39.9,top: height/168.8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Native staking",style: TextStyle(color:Color.fromARGB(218, 216, 215, 215),fontSize: 18,fontWeight: FontWeight.bold),),
                SizedBox(height: width/33.76,),
                GestureDetector(
                  onTap: () {
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
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color:Color.fromARGB(135, 67, 67, 67),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(top: height/42.2,bottom: height/42.2,left: width/19.95),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: height/12,
                            width: width/5.7,
                            decoration: BoxDecoration(
                              image: DecorationImage(image:AssetImage("walletSources/image1.png"),fit: BoxFit.contain)
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: width/39.9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Stake Your ETH with Trust",style: TextStyle(color:const Color.fromARGB(137, 255, 255, 255),fontSize: width/26.6),),
                                Row(
                                  children: [
                                    Text("Stake now",style: TextStyle(fontSize: width/30.6,color:Color.fromARGB(255,73,255,145)),),
                                    SizedBox(width: width/79.8,),
                                    Icon(Icons.arrow_forward,size: width/26.6,color: Color.fromARGB(255,73,255,145),)
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height/42.2,), 
                earncontainer(img: 'walletSources/evmos.png', txt1: 'Native Evmos(EVMOS)', txt2: 'APR +11.13%',),
                earncontainer(img: 'walletSources/star.jpg', txt1: 'Stargaze(STARS)', txt2: 'APR +22.69%',),
                earncontainer(img: 'walletSources/ETH.jpg', txt1: 'Ethereum(ETH)', txt2: 'APR +3.33%',),
                
                earncontainer(img: 'walletSources/atom.png', txt1: 'Stargaze(STARS)', txt2: 'APR +22.69%',),
                earncontainer(img: 'walletSources/star.jpg', txt1: 'Stargaze(STARS)', txt2: 'APR +22.69%',),
                earncontainer(img: 'walletSources/star.jpg', txt1: 'Stargaze(STARS)', txt2: 'APR +22.69%',),
                earncontainer(img: 'walletSources/star.jpg', txt1: 'Stargaze(STARS)', txt2: 'APR +22.69%',),
                earncontainer(img: 'walletSources/star.jpg', txt1: 'Stargaze(STARS)', txt2: 'APR +22.69%',),
                earncontainer(img: 'walletSources/star.jpg', txt1: 'Stargaze(STARS)', txt2: 'APR +22.69%',),
                earncontainer(img: 'walletSources/star.jpg', txt1: 'Stargaze(STARS)', txt2: 'APR +22.69%',),
                earncontainer(img: 'walletSources/star.jpg', txt1: 'Stargaze(STARS)', txt2: 'APR +22.69%',),
                earncontainer(img: 'walletSources/star.jpg', txt1: 'Stargaze(STARS)', txt2: 'APR +22.69%',),
                earncontainer(img: 'walletSources/star.jpg', txt1: 'Stargaze(STARS)', txt2: 'APR +22.69%',),
                earncontainer(img: 'walletSources/star.jpg', txt1: 'Stargaze(STARS)', txt2: 'APR +22.69%',),
                              
                ],
            ),
          ),
        ),

    );
  }
}