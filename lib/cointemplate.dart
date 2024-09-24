import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wallet_app/cryptoclicker.dart';

class cointemplate extends StatefulWidget {

  Color box;
  String name1;
  String subname1;
  String name2;
  String subname2;
   cointemplate({
    required this.box,
    required this.name1,
    required this.subname1,
    required this.name2,
    required this.subname2,
      super.key});

  @override
  State<cointemplate> createState() => _cointemplateState();
}

class _cointemplateState extends State<cointemplate> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;    
            return GestureDetector(
              onTap: () {
                    showModalBottomSheet(
              
              context: context,
              builder: (BuildContext context) {


                if (widget.name1=="BNB") {
                  return cryptopicker();

                }else {
                  return cryptopicker();
                }
              }
                            );
              },
              child: Container(
                      child: Padding(
                        padding:  EdgeInsets.only(left: width/38,right: width/38),
                        child:
                          Container(
                                width: double.infinity,
                                height: height/14,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(left: width/28),
                                        child: Container(
                                          width: width/13,
                                          height: height/28,
                                          decoration: BoxDecoration(color:widget.box,borderRadius: BorderRadius.circular(30)),
                                        ),
                                      ),
                                      
                                      Padding(
                                        padding:  EdgeInsets.only(left: width/26),
                                        child: Column(
                                          crossAxisAlignment:CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:  EdgeInsets.only(bottom:2 ),
                                              child: Text(widget.name1,style: TextStyle(fontSize: width/25,fontWeight: FontWeight.bold,),),
                                            ),
                                            Text(widget.subname1 ,style: TextStyle(fontSize: width/29,color: const Color.fromARGB(137, 255, 255, 255)))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 3),
                                        child: Text(widget.name2, style: TextStyle(fontWeight: FontWeight.bold,fontSize: width/25.8),),
                                      ),
                                      Text(widget.subname2, style: TextStyle(color: Color.fromARGB(255, 6, 255, 14),fontSize: width/29),)
                                    ],
                                  ),
                                ],
                              ),
                              ),
                        ),
                      ),
            );
  }
}