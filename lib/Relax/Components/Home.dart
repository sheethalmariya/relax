import 'package:flutter/material.dart';
import 'package:relax/screen/Feed/Feed.dart';
import 'package:page_transition/page_transition.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return SafeArea(
       child: Container(
          alignment: Alignment.center,

          margin: EdgeInsets.symmetric(horizontal:5,vertical: 5),
          padding: EdgeInsets.only(left: 40),

          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(
               height: 10,
           ),

             Text("Explore",style: TextStyle(fontSize: 55,fontWeight: FontWeight.w900,fontFamily: "Oxygen"),),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text("your",style: TextStyle(fontSize: 55,fontWeight: FontWeight.w900,fontFamily: "Oxygen"),),

                 Container(
                     margin: EdgeInsets.only(left: 10,top: 10),
                     height: 50,width: 50,
                     child: Image.asset("imag/un.PNG",)),
               ],
             ),

             Text("feelings",style: TextStyle(fontSize: 55,fontWeight: FontWeight.w900,fontFamily: "Oxygen"),),
             //SizedBox(height: 30,),
             SizedBox(
               height: 400,
                 width: 300,
                 child: Image.asset("imag/girl.PNG",scale: 0.9,)),
             SizedBox(
               height: 50,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 /*Padding(
                   padding: const EdgeInsets.only(right: 25),
                   //child: Text("1/3_",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                 ),*/

                 Padding(
                   padding: const EdgeInsets.only(left: 100),
                   child: SizedBox(
                     height: 55,
                     width: 120,
                     child: ElevatedButton(

                         style: ElevatedButton.styleFrom(primary: Colors.black,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),),
                         onPressed: () {
                           Navigator.push(
                             context,
                             PageTransition(
                               type: PageTransitionType.rightToLeft,
                               duration: Duration(milliseconds: 500),
                               child: Feed(),

                             ),
                           );
                           //Navigator.push(context, MaterialPageRoute(builder: (context) => Feed(),),);

                           },
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [


                               Text("Start",style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "MontserratAlternates"),),
                               SizedBox(width: 10,),
                               Image.asset("imag/arro.jpg",scale: 0.5,height: 20,width: 30,),
                             ],
                           ),
                         ),
                     ),
                   ),
                 ),
    ],

             ),

    ],
    ),

    ),
     );




  }
}
