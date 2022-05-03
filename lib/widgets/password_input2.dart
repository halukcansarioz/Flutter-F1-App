import 'package:flutter/material.dart';

import '../palatte.dart';

class PasswordInput2 extends StatelessWidget {
  const PasswordInput2(
      {Key? key,
      required this.icon,
      required this.hint,
      required this.inputAction})
      : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[600]?.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16)),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon, color: Colors.white, size: 20),
          hintStyle: kBodyText,
        ),
        obscureText: true,
        style: kBodyText,
        textInputAction: inputAction,
      ),
    );
  }
}
