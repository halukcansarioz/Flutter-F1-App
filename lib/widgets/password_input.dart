import 'package:flutter/material.dart';

import '../palatte.dart';

class PasswordInput extends StatelessWidget {
  final TextEditingController _passwordController = TextEditingController();

  PasswordInput(
      {Key? key,
      required this.icon,
      required this.hint,
      required this.inputAction,
      controller})
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
        controller: _passwordController,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 20),
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon, color: Colors.white, size: 30),
          hintStyle: kBodyText,
        ),
        obscureText: true,
        style: kBodyText,
        textInputAction: inputAction,
      ),
    );
  }
}
