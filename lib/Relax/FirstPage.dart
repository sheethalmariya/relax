import 'package:flutter/material.dart';
import 'package:relax/Relax/Components/Home.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,

      body: Home(),

    );

  }
}
