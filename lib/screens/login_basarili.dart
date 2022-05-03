import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../palatte.dart';
import '../widgets/background-image.dart';

class LoginBasarili extends StatefulWidget {
  const LoginBasarili({Key? key}) : super(key: key);

  @override
  State<LoginBasarili> createState() => _LoginBasariliState();
}

class _LoginBasariliState extends State<LoginBasarili> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        const BackgroundImage(),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: SafeArea(
                  child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 100,
                    child: Center(
                        child: Text(
                      'Formula 1',
                      style: kHeading,
                    )),
                  ),
                  const SizedBox(
                    height: 20,
                    child: Center(
                        child: Text(
                      '       Login successful select the page you want to go to',
                      style: kBodyText,
                    )),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const SizedBox(
                                  height: 80,
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromARGB(255, 182, 7, 7),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: TextButton(
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child:
                                            Text("Home Page", style: kBodyText),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/anasayfa');
                                      }),
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromARGB(255, 182, 7, 7),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: TextButton(
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child:
                                            Text("WebSite", style: kBodyText),
                                      ),
                                      onPressed: () async {
                                        Navigator.pop(context);
                                        const url = 'https://www.formula1.com/';
                                        try {
                                          bool launched = await launch(url,
                                              forceSafariVC: false);
                                          if (!launched) {
                                            await launch(url,
                                                forceSafariVC: false);
                                          }
                                        } catch (e) {
                                          debugPrint(
                                              'webSite problem: ${e.toString()}');
                                          await launch(url,
                                              forceSafariVC: false);
                                        }
                                      }),
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromARGB(255, 182, 7, 7),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: TextButton(
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: Text("Video", style: kBodyText),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/video');
                                      }),
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromARGB(255, 182, 7, 7),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: TextButton(
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: Text("Teams", style: kBodyText),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/takimlar');
                                      }),
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromARGB(255, 182, 7, 7),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: TextButton(
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: Text("Racing", style: kBodyText),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/pistler');
                                      }),
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromARGB(255, 182, 7, 7),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: TextButton(
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child:
                                            Text("Drivers", style: kBodyText),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/suruculer');
                                      }),
                                ),
                                const SizedBox(height: 30),
                              ],
                            ),
                          ],
                        ),
                      ])),
                ],
              )),
            )),
      ]),
    );
  }
}
