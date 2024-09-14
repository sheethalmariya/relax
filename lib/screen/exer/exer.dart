import 'package:flutter/material.dart';
import 'package:relax/screen/exer/compo/exer_body.dart';
class Exer extends StatelessWidget {
   Exer({Key? key,required this.data}) : super(key: key);
  Map<String,dynamic> data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade50,
        body: ExerBody(data: data),
    );
  }


}
