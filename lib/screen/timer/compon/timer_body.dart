import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown_controller.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:simple_timer/simple_timer.dart';
import 'dart:async';
import 'package:lottie/lottie.dart';

class TimerBody extends StatefulWidget {
  TimerBody({Key? key}) : super(key: key);

  @override
  State<TimerBody> createState() => _TimerBodyState();
}

class _TimerBodyState extends State<TimerBody> {
  int endTime = DateTime.now().millisecondsSinceEpoch + 40000 * 30;


  bool isPressed = false;





  // Timer? countdownTimer;
  // Duration myDuration = Duration(minutes: 20);
  // void startTimer() {
  //   countdownTimer =
  //       Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  // }
  // void stopTimer() {
  //   setState(() => countdownTimer!.cancel());
  // }
  // void setCountDown() {
  //   final reduceSecondsBy = 1;
  //   setState(() {
  //     final seconds = myDuration.inSeconds - reduceSecondsBy;
  //     if (seconds < 0) {
  //       Navigator.pop(context);
  //     } else {
  //       myDuration = Duration(seconds: seconds);
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // String strDigits(int n) => n.toString().padLeft(2, '0');
    // final minutes = strDigits(myDuration.inMinutes.remainder(60));
    // final seconds = strDigits(myDuration.inSeconds.remainder(60));
    return SafeArea(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close)),
            ],
          ),
        ),
        Container(
          height: 45,
          width: 100,
          decoration: BoxDecoration(
              color: Color(0xfff0f4f0),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(30)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.access_time_filled_rounded,
                  size: 25,
                  color: Color(0xffd0dcd0),
                ),

                //Text("$minutes:$seconds",style: TextStyle(fontSize: 15),),


                CountdownTimer(

                  endTime: endTime,
                  widgetBuilder: (context, time) {
                    if (time == null) {
                      Navigator.pop(context);
                    }
                    return Text('${time!.min}:${time.sec}');
                  },
                ),

              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(100),
          child: Lottie.asset("Lott/lotie.json"),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(top: 450),
        //   child:SizedBox(
        //     height: 80,width: 80,
        //   child: FittedBox(
        //     child: FloatingActionButton(onPressed: (){
        //
        //       setState(() {
        //
        //         isPressed=!isPressed;
        //       });
        //
        //     },
        //
        //       backgroundColor: Colors.black,
        //       child: Icon( isPressed ? Icons.play_arrow_rounded : Icons.pause,size: 30),
        //     ),
        //   ),
        //   ),
        // ),
      ],
    ));
  }
}
