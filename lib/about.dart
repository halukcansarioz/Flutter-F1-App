import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: About(),
    ));

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 226, 12, 12),
          centerTitle: true,
          title: const Text(
            "About",
            style: TextStyle(
              fontFamily: "Merriweather-Italic",
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(),
            child: ListView(children: <Widget>[
              Container(
                margin: const EdgeInsets.all(10),
                child: Card(
                  elevation: 10,
                  child: ListTile(
                      //leading: const FlutterLogo(),
                      leading:
                          const Icon(Icons.flag_outlined, color: Colors.red),
                      title: const Text('Privacy policy',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500,
                          )),
                      trailing:
                          const Icon(Icons.navigate_next, color: Colors.red),
                      //trailing: Icon(Icons.more_vert),
                      onTap: () {
                        Navigator.pushNamed(context, '/privacypolicy');
                      }),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Card(
                  elevation: 10,
                  child: ListTile(
                      //leading: const FlutterLogo(),
                      leading:
                          const Icon(Icons.flag_outlined, color: Colors.red),
                      title: const Text('Cookie Policy',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500,
                          )),
                      trailing:
                          const Icon(Icons.navigate_next, color: Colors.red),
                      //trailing: Icon(Icons.more_vert),
                      onTap: () {
                        Navigator.pushNamed(context, '/cookiepolicy');
                      }),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Card(
                  elevation: 10,
                  child: ListTile(
                      //leading: const FlutterLogo(),
                      leading:
                          const Icon(Icons.flag_outlined, color: Colors.red),
                      title: const Text('App terms of use',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500,
                          )),
                      trailing:
                          const Icon(Icons.navigate_next, color: Colors.red),
                      //trailing: Icon(Icons.more_vert),
                      onTap: () {
                        Navigator.pushNamed(context, '/apptermsofuse');
                      }),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Card(
                  elevation: 10,
                  child: ListTile(
                      //leading: const FlutterLogo(),
                      leading:
                          const Icon(Icons.flag_outlined, color: Colors.red),
                      title: const Text(
                          'Official F1 Race Guide App Terms and Conditions',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500,
                          )),
                      trailing:
                          const Icon(Icons.navigate_next, color: Colors.red),
                      //trailing: Icon(Icons.more_vert),
                      onTap: () {
                        Navigator.pushNamed(context,
                            '/officialf1raceguideapptermsandconditions');
                      }),
                ),
              ),
            ])),
      )
    ]);
  }
}
