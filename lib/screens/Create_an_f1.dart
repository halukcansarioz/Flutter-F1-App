import 'package:awesome_icons/awesome_icons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:formula1/screens/loginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:formula1/palatte.dart';
import '../services/auth.dart';
import '../widgets/background-image-create.dart';

class CreateanF1 extends StatefulWidget {
  const CreateanF1({Key? key}) : super(key: key);

  @override
  State<CreateanF1> createState() => _CreateanF1State();
}

class _CreateanF1State extends State<CreateanF1> {
  bool check = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;
  bool check5 = false;
  bool check6 = false;

  @override
  // ignore: must_call_super
  void initState() {
    _loadswitchValue();
  }

  _loadswitchValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      check = prefs.getBool("1") ?? false;
      check = prefs.getBool("2") ?? false;
      check = prefs.getBool("3") ?? false;
      check = prefs.getBool("4") ?? false;
      check = prefs.getBool("5") ?? false;
      check = prefs.getBool("6") ?? false;
    });
  }

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordAgainController =
      TextEditingController();

  final AuthService _authService = AuthService();

  kayitOL() {
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text, password: _passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const BackgroundImageCreate(),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: SafeArea(
                  child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 200,
                    child: Center(
                        child: Text(
                      'Create an F1® account  ',
                      style: kHeading2,
                    )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 20,
                    child: Center(
                        child: Text(
                      'Got an F1 account?  ',
                      style: kBodyText,
                    )),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[600]?.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(16)),
                              child: TextField(
                                controller: _nameController,
                                decoration: const InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 20),
                                  border: InputBorder.none,
                                  hintText: 'User Name',
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    child: Icon(Icons.person,
                                        color: Colors.white, size: 20),
                                  ),
                                  hintStyle: kBodyText,
                                ),
                                style: kBodyText,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            /*const TextInput2(
                              icon: Icons.person,
                              hint: 'User Name',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),*/
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[600]?.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(16)),
                              child: TextField(
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 20),
                                  border: InputBorder.none,
                                  hintText: 'Email',
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    child: Icon(FontAwesomeIcons.solidEnvelope,
                                        color: Colors.white, size: 20),
                                  ),
                                  hintStyle: kBodyText,
                                ),
                                style: kBodyText,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            /*const TextInput2(
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
                                      EdgeInsets.symmetric(vertical: 15),
                                  border: InputBorder.none,
                                  hintText: 'Password',
                                  prefixIcon: Icon(FontAwesomeIcons.lock,
                                      color: Colors.white, size: 20),
                                  hintStyle: kBodyText,
                                ),
                                obscureText: true,
                                style: kBodyText,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                            /*const PasswordInput2(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Password',
                              inputAction: TextInputAction.next,
                            ),*/
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[600]?.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(16)),
                              child: TextField(
                                controller: _passwordAgainController,
                                decoration: const InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 15),
                                  border: InputBorder.none,
                                  hintText: 'Password again',
                                  prefixIcon: Icon(FontAwesomeIcons.lock,
                                      color: Colors.white, size: 20),
                                  hintStyle: kBodyText,
                                ),
                                obscureText: true,
                                style: kBodyText,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                            /*const PasswordInput2(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Password again',
                              inputAction: TextInputAction.next,
                            ),*/
                            const SizedBox(
                              height: 20.0,
                            ),
                            InkWell(
                              onTap: () {
                                _authService
                                    .createPerson(
                                        _nameController.text,
                                        _emailController.text,
                                        _passwordController.text)
                                    .then((value) {
                                  return Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginPage()));
                                });
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 2),
                                    //color: colorPrimaryShade,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30))),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Center(
                                      child: Text(
                                    "Save",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  )),
                                ),
                              ),
                            ),
                            /*Column(
                              children: [
                                /*RoundedButton2(
                                  buttonText: 'Save',
                                ),*/

                                Container(
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.white, width: 1))),
                                  child: const Text('Create New Account ',
                                      style: kBodyText),
                                ),
                              ],
                            ),*/
                          ],
                        ),
                      ],
                    ),
                  ),
                  /*Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xff696969),
                                  borderRadius: BorderRadius.circular(16)),
                              child: ListTile(
                                leading: const Icon(Icons.subtitles,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                                title: const Text("Title", style: kBodyText),
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                          title: const Text(
                                            "Select yout title",
                                            style: TextStyle(
                                              fontFamily: "Merriweather-Italic",
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                          content: SizedBox(
                                            height: 350,
                                            child: Column(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Checkbox(
                                                      autofocus: false,
                                                      value: check,
                                                      checkColor: Colors.white,
                                                      focusColor: Colors.red,
                                                      activeColor: Colors.red,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          check = value!;
                                                          _savenswitchValue();
                                                        });
                                                      },
                                                    ),
                                                    const Text(
                                                      "Mr",
                                                      style: TextStyle(
                                                        fontFamily:
                                                            "Merriweather-Italic",
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Checkbox(
                                                      autofocus: false,
                                                      value: check2,
                                                      checkColor: Colors.white,
                                                      focusColor: Colors.red,
                                                      activeColor: Colors.red,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          check2 = value!;
                                                          _savenswitchValue();
                                                        });
                                                      },
                                                    ),
                                                    const Text("Mrs"),
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Checkbox(
                                                      autofocus: false,
                                                      value: check3,
                                                      checkColor: Colors.white,
                                                      focusColor: Colors.red,
                                                      activeColor: Colors.red,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          check3 = value!;
                                                          _savenswitchValue();
                                                        });
                                                      },
                                                    ),
                                                    const Text("Ms"),
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Checkbox(
                                                      autofocus: false,
                                                      value: check4,
                                                      checkColor: Colors.white,
                                                      focusColor: Colors.red,
                                                      activeColor: Colors.red,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          check4 = value!;
                                                          _savenswitchValue();
                                                        });
                                                      },
                                                    ),
                                                    const Text("Miss"),
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Checkbox(
                                                      autofocus: false,
                                                      value: check5,
                                                      checkColor: Colors.white,
                                                      focusColor: Colors.red,
                                                      activeColor: Colors.red,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          check5 = value!;
                                                          _savenswitchValue();
                                                        });
                                                      },
                                                    ),
                                                    const Text(
                                                        "Prefer not the say"),
                                                  ],
                                                ),
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          context, 'Cancel'),
                                                  child: const Text('Cancel',
                                                      style: TextStyle(
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        fontFamily:
                                                            "Merriweather-Italic",
                                                      )),
                                                ),
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          context, 'OK'),
                                                  child: const Text('OK',
                                                      style: TextStyle(
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        fontFamily:
                                                            "Merriweather-Italic",
                                                      )),
                                                ),
                                              ],
                                            ),
                                          )));

                                  /*showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: const Text("Selam"),
                                            content: const Text("gdsgasg"),
                                            actions: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16)),
                                                child: TextButton(
                                                  child: const Text(
                                                    'Ok',
                                                    style: kHeading4,
                                                  ),
                                                  onPressed: () =>
                                                      Navigator.pop(context),
                                                ),
                                              ),
                                            ],
                                          ));*/
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),*/
                ],
              )),
            )),
      ],
    );
  }
}
