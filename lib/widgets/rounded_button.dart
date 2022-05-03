import 'package:flutter/material.dart';

import '../palatte.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key? key, required this.buttonText}) : super(key: key);

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
              color: const Color(0xfff1a544),
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
