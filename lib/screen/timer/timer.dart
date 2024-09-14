import 'package:flutter/material.dart';
import 'package:relax/screen/timer/compon/timer_body.dart';
class Timer extends StatelessWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TimerBody()
      ,
    );
  }
}
