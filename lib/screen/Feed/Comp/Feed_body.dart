import 'package:flutter/material.dart';
import 'package:relax/screen/exer/exer.dart';
import 'package:page_transition/page_transition.dart';

class FeedBody extends StatefulWidget {
  FeedBody({Key? key}) : super(key: key);

  @override
  State<FeedBody> createState() => _FeedBodyState();
}

class _FeedBodyState extends State<FeedBody> {
  //List<String> data=["Bad","Sad","Normal","Great"];
  bool bad = false;
  bool sad = false;
  bool normal = false;
  bool great = false;
  List<Map<String, dynamic>> data = [
    {
      "image": "imag/lungs.PNG",
      "msg1": "Take a deep breath",
      "msg2": "Breathing exercise",
      "color": 0xffF7E9A1,
      "desc":
          "Try easy breathing techniques to meet your specific needs in this moment.",
      "text1": "Relax your mind",
      "text2": "Strengthen body",
      "text3": "Quick breath"
    },
    {
      "image": "imag/moon.PNG",
      "msg1": "Days of sleep",
      "msg2": "Sleeping exercise",
      "color": 0xffD9DFE5,
      "desc": "Prioritizing good sleep is good self love.",
      "text1": "Prepare your bed",
      "text2": "Pray for eveything",
      "text3": "Good thought"
    },
    {
      "image": "imag/coffee.jpg",
      "msg1": "Morning coffee",
      "msg2": "Drinking exercise",
      "color": 0xffE2DAE9,
      "desc": "Happiness is the smell of early morning coffee.",
      "text1": "Make a cup of coffee",
      "text2": "Enjoy the coffee",
      "text3": "Get fresh"
    },
    {
      "image": "imag/food.jpg",
      "msg1": "Balanced diet",
      "msg2": "Eating exercise",
      "color": 0xffd0dcd0,
      "desc": "Eat a well-balanced, low-fat diet with lots of fruits and vegs.",
      "text1": "Prepare meal",
      "text2": "Include items",
      "text3": "Eat peacefully"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(

        //padding: EdgeInsets.only(left: 15,right: 15),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: 60),
                Padding(
                    padding: EdgeInsets.only(right: 150),
                    child: Text(
                      "How do you feeling ?",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.all(0.8),
                          alignment: Alignment.center,
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                              color: bad == false
                                  ? Colors.blueGrey.shade50
                                  : Colors.black),
                          child: Text(
                            "Bad",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color:
                                    bad == false ? Colors.black : Colors.white),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            bad = true;
                            sad = false;
                            normal = false;
                            great = false;
                          });
                        },
                      ),
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.all(0.8),
                          alignment: Alignment.center,
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                              color: sad == false
                                  ? Colors.blueGrey.shade50
                                  : Colors.black),
                          child: Text(
                            "Sad",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color:
                                    sad == false ? Colors.black : Colors.white),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            bad = false;
                            sad = true;
                            normal = false;
                            great = false;
                          });
                        },
                      ),
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.all(0.8),
                          alignment: Alignment.center,
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                              color: normal == false
                                  ? Colors.blueGrey.shade50
                                  : Colors.black),
                          child: Text(
                            "Normal",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: normal == false
                                    ? Colors.black
                                    : Colors.white),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            bad = false;
                            sad = false;
                            normal = true;
                            great = false;
                          });
                        },
                      ),
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.all(0.8),
                          alignment: Alignment.center,
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                              color: great == false
                                  ? Colors.blueGrey.shade50
                                  : Colors.black),
                          child: Text(
                            "Great",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: great == false
                                    ? Colors.black
                                    : Colors.white),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            bad = false;
                            sad = false;
                            normal = false;
                            great = true;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Daily tasks",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        " 4 ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 88, top: 5),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          " ",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 600,
              child: Container(
                height: 500,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        margin: EdgeInsets.only(left: 15, right: 10, top: 5),
                        height: 195,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color(data[index]["color"]),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5, left: 245),
                              height: 35,
                              width: 85,
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.access_time_filled_rounded,
                                        size: 13),
                                    Text(
                                      "20 min",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 70,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Image.asset("${data[index]["image"]}"),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data[index]["msg1"],
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: "Oxygen"),
                                  ),
                                  Text(
                                    data[index]["msg2"],
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: "Oxygen",
                                        color: Colors.grey.shade500),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white, width: 3),
                                      shape: BoxShape.circle,
                                      // borderRadius:
                                      //     BorderRadius.all(Radius.circular(70)),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.play_circle_fill_rounded,
                                        size: 50,
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.rightToLeft,
                                          child: Exer(data: data[index]),
                                          duration: Duration(milliseconds: 400)
                                      ),
                                      );
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder: (context) =>
                                      //         Exer(data: data[index]),
                                      //   ),
                                      // );
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
