import 'package:flutter/material.dart';

class YarisciKart extends StatelessWidget {
  final String yarisci;
  /*final String bio;*/
  const YarisciKart({Key? key, required this.yarisci}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      color: const Color.fromARGB(255, 255, 0, 0),
      child: Container(
        height: 120,
        color: Colors.white,
        margin: const EdgeInsets.fromLTRB(1.0, 22.0, 1, 1),
        child: Center(
            child: Text(
          yarisci,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            fontFamily: "Merriweather-Italic",
          ),
        )),
      ),
    );
  }
}
