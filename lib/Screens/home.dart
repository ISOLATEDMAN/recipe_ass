import 'package:flutter/material.dart';
import 'package:recipto_ass/widget/getfor.dart';
import 'package:recipto_ass/widget/paybill.dart';
import 'package:recipto_ass/widget/purch.dart';
import 'package:recipto_ass/widget/shopab.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Column(
      
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 120,),
          Row(
              children: [
                SizedBox(width: 20,),
                Container(width: 50,height: 50,decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(05)
                ),),
                SizedBox(width: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Magnolio Bakery",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("3%cashback . ₹250 Welcome Bonus",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 118, 118, 118)),)
                  ],
                ),
              ],
            ),
            SizedBox(height: 30,),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Text("Claim Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height:20 ,),
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      Paybill(),
                      SizedBox(width: 10,),
                      Getfor()
                  ],),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      Shopab(),
                      SizedBox(width: 10,),
                      Purch()
                    ],
                  )
          
        ],
      ),
    );
  }
}