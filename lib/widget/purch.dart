import 'package:flutter/material.dart';

class Purch extends StatelessWidget {
  const Purch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                        width: 160,
                        height: 260,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
                            colors: [
                            Colors.white,
                            Color.fromARGB(255, 193, 229, 247)
                          ]),
                          
                        ),
                        child:Center(
                          child: Column(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                child: Image.asset('assets/Offers/Store Cashback.png')),
                                SizedBox(height: 25,),
                                Text("Buy 500",style: TextStyle(fontSize: 20),),
                                Text("for just 450",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                SizedBox(height: 20,),
                                Padding(
            padding:EdgeInsets.symmetric(horizontal:10.0),
            child:Container(
            height:1.0,
          width:130.0,
            color:Colors.black,),),
            SizedBox(height: 10,),
            Container(
              width: 120,
              child: ElevatedButton(onPressed: (){
                showModalBottomSheet(context: context, builder:  (BuildContext context) {
                  return SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            Text("Proof of transactions",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            Text("Scan Recipt/share payment transactions",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey),),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            SizedBox(width: 60,),
                            Container(
                              width: 280,
                              height: 50,
                              child: ElevatedButton(onPressed: (){}, child: Row(children: [
                                Text("Share Payment image",style: TextStyle(fontSize: 15,color: const Color.fromARGB(255, 87, 100, 218)),),
                                SizedBox(width: 20,),
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset('assets/UPI Image.png'),)
                              ],)),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            SizedBox(width: 60,),
                            Container(
                              width: 280,
                              height: 50,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                 backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 87, 100, 218)),
                                ),
                                onPressed: (){}, child: Row(children: [
                                  SizedBox(width: 70,),
                                Text("Scan Recipt",style: TextStyle(fontSize: 15,color: Colors.white),),
                                
                              ],)
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  );
                });
              }, child: Text("Get for 450",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12),)))
                            ],
                          ),
                        ),
                      );
  }
}