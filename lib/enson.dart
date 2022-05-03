import 'package:flutter/material.dart';

class EnSon extends StatelessWidget {
  const EnSon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 226, 12, 12),
        centerTitle: true,
        title: const Text(
          "Latest",
          style: TextStyle(
            fontFamily: "Merriweather-Italic",
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
