import 'package:flutter/material.dart';

import '../palatte.dart';

class TextInput extends StatefulWidget {
  const TextInput(
      {Key? key,
      required this.icon,
      required this.hint,
      required this.inputType,
      required this.inputAction})
      : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[600]?.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16)),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            hintText: widget.hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Icon(widget.icon, color: Colors.white, size: 20),
            ),
            hintStyle: kBodyText,
          ),
          style: kBodyText,
          keyboardType: widget.inputType,
          textInputAction: widget.inputAction,
        ),
      ),
    );
  }
}
