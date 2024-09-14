import 'package:flutter/material.dart';
import 'package:relax/screen/timer/timer.dart';
import 'package:page_transition/page_transition.dart';
class ExerBody extends StatefulWidget {
   ExerBody({Key? key,required this.data}) : super(key: key);
  Map<String,dynamic> data;
  @override
  State<ExerBody> createState() => _ExerBodyState();
}

class _ExerBodyState extends State<ExerBody> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
          children:[ Container(
          height: 760,
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5,right: 5,top: 50,bottom: 5),

                    decoration: BoxDecoration(color: Color(widget.data["color"]),borderRadius: BorderRadius.circular(20)),
                    child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(left: 8,top: 10),
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Colors.white70),
                                height: 50,
                                width: 50,
                                child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 13,)),
                            onTap: (){
                              Navigator.pop(context);
                            },
                          ),
                          SizedBox(
                            height: 140,width: 350,

                              child: Image.asset(widget.data["image"],scale: 0.9),

                          ),
                          SizedBox(height: 15),
                          Container(
                            alignment: Alignment.center,
                            child: Column(

                              children: [
                                Text(widget.data["msg2"],style: TextStyle(fontSize: 18,
                                    fontFamily: "Oxygen",
                                    color: Colors.black54,fontWeight: FontWeight.bold),),
                                SizedBox(height: 5),
                                Text(widget.data["msg1"],style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: "Oxygen"),),
                                SizedBox(height: 15),
                                Container(

                                  height: 35,
                                  width: 75,
                                  decoration: BoxDecoration(color: Colors.white70,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                    child: Row(

                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [

                                        Icon(Icons.access_time_filled_rounded, size: 13),
                                        Text("20 min", style: TextStyle(
                                            fontSize: 13, fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),

                                ),
                               SizedBox(height: 20),
                               Padding(
                                 padding: const EdgeInsets.only(left: 30,right: 35,top: 8,bottom: 8),
                                 child: Text(widget.data["desc"],textAlign: TextAlign.center,
                                   style: TextStyle(
                                         fontSize: 15,
                                         fontFamily: "Oxygen",
                                         color: Colors.black45),),
                               ) ,
                                SizedBox(height: 20),

                              ],
                            ),
                          )
                        ],
                      ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 165,
                        height: 155,

                        padding: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffE2DAE9)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(

                              decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white70),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text("1",style: TextStyle(fontSize: 15),),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 15,right: 40,top: 20),
                              child: Text(widget.data["text1"],style: TextStyle(fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: "Oxygen"),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 130),
                              child: Text("10",style: TextStyle(fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: "Oxygen"),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 130),
                              child: Text("min",style: TextStyle(fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Oxygen"),),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        width: 165,
                        height: 155,

                        padding: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffD9DFE5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(

                              decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white70),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text("2",style: TextStyle(fontSize: 15),),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 15,right: 30,top: 20),
                              child: Text(widget.data["text2"],style: TextStyle(fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: "Oxygen"),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 130),
                              child: Text(" 7",style: TextStyle(fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: "Oxygen"),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 130),
                              child: Text("min",style: TextStyle(fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Oxygen"),),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30,left: 5,right: 5,top: 5),
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffd0dcd0)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            height: 130,width: 65,
                            decoration: BoxDecoration(shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white70),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25,top: 60),
                              child: Text("3",style: TextStyle(fontSize: 17),),
                            ),
                          ),
                        ),
                       Padding(
                         padding: const EdgeInsets.only(left: 7),
                         child: Text(widget.data["text3"],style: TextStyle(fontSize: 17,
                             fontWeight: FontWeight.w900,
                             fontFamily: "Oxygen")),
                       ),
                         Padding(
                           padding: const EdgeInsets.only(left: 130,top: 60),
                           child: Column(

                             children: [
                                Text(" 3",style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: "Oxygen")),
                                Text("min",style: TextStyle(fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Oxygen")),
                              ],
                            ),
                         ),

                      ],
                    )
                  )
                ],

              ),
            ),

          ),
            Padding(
              padding: EdgeInsets.only(top:670,left: 130),
              child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.bottomToTop,
                          child: Timer(),
                          duration: Duration(milliseconds: 400),
                        ),
                      );
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => Timer(),),);
                    });
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                  child: Padding(
                    padding: EdgeInsets.all(25),
                      child: Text("Start",style: TextStyle(
                      fontSize: 11,color: Colors.white,
                      fontWeight: FontWeight.bold,fontFamily: "MontserratAlternates"))),

            ),
            ),

      ],

        ),

    );  }
}
