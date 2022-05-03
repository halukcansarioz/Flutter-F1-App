import 'package:flutter/material.dart';

import '../palatte.dart';

class RoundedButton2 extends StatelessWidget {
  const RoundedButton2({Key? key, required this.buttonText}) : super(key: key);

  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 34, 105, 126),
              borderRadius: BorderRadius.circular(16)),
          child: TextButton(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(buttonText, style: kBodyText),
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
