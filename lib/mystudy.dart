import 'package:flutter/material.dart';
class Mystudies extends StatefulWidget {
  const Mystudies({Key? key}) : super(key: key);

  @override
  State<Mystudies> createState() => _MystudiesState();
}

class _MystudiesState extends State<Mystudies> {
  var indicator = const CircularProgressIndicator();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
         children: [
        Container(
        alignment: Alignment.center,

    child: Column(
    children:   [
        indicator,
    const SizedBox(
    height: 2,
    ),
    ],
    ),
    ),
    ]),
    );
  }
}
