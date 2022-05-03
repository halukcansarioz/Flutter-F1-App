// ignore: file_names
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:formula1/anasayfa.dart';
import 'package:formula1/palatte.dart';
import 'package:formula1/screens/Create_an_f1.dart';
import 'package:formula1/screens/login_basarili.dart';

import 'package:formula1/widgets/widgets.dart';

import '../services/auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const BackgroundImage(),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: SafeArea(
                  child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 180,
                    child: Center(
                        child: Text(
                      'Formula 1',
                      style: kHeading,
                    )),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[600]?.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(16)),
                              child: TextField(
                                controller: _emailController,
                                decoration: const InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 20),
                                  border: InputBorder.none,
                                  hintText: "Email",
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    child: Icon(FontAwesomeIcons.solidEnvelope,
                                        color: Colors.white, size: 30),
                                  ),
                                  hintStyle: kBodyText,
                                ),
                                style: kBodyText,
                                //keyboardType: widget.inputType,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                            /*const TextInput(
                              icon: FontAwesomeIcons.solidEnvelope,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),*/
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[600]?.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(16)),
                              child: TextField(
                                controller: _passwordController,
                                decoration: const InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 20),
                                  border: InputBorder.none,
                                  hintText: 'Password',
                                  prefixIcon: Icon(FontAwesomeIcons.lockOpen,
                                      color: Colors.white, size: 30),
                                  hintStyle: kBodyText,
                                ),
                                obscureText: true,
                                style: kBodyText,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                            /*
                            PasswordInput(
                              icon: FontAwesomeIcons.lockOpen,
                              hint: 'Password',
                              inputAction: TextInputAction.next,
                            ),*/
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Forgot Password?',
                              style: kBodyText,
                            ),
                            Column(
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
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.0),
                                      child: Text("Login", style: kBodyText),
                                    ),
                                    onPressed: () {
                                      _authService
                                          .signIn(_emailController.text,
                                              _passwordController.text)
                                          .then((value) {
                                        return Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const LoginBasarili()));
                                      });
                                    },
                                  ),
                                ),
                                const SizedBox(height: 10),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const CreateanF1()));
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 75,
                                        color: Colors.white,
                                      ),
                                      const Text(
                                        "Join",
                                        style: kBodyText,
                                      ),
                                      Container(
                                        height: 1,
                                        width: 75,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ])),
                ],
              )),
            )),
      ],
    );
  }
}
