import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MaterialApp(
      home: Help(),
    ));

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 226, 12, 12),
          centerTitle: true,
          title: const Text(
            "Drivers",
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
                      title: const Text('Frequently Asked Quentions',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500,
                          )),
                      trailing:
                          const Icon(Icons.navigate_next, color: Colors.red),
                      //trailing: Icon(Icons.more_vert),

                      onTap: () async {
                        Navigator.pop(context);
                        const url = 'https://f1experiences.com/about-us/faqs';
                        try {
                          bool launched =
                              await launch(url, forceSafariVC: false);
                          if (!launched) {
                            await launch(url, forceSafariVC: false);
                          }
                        } catch (e) {
                          debugPrint('webSite problem: ${e.toString()}');
                          await launch(url, forceSafariVC: false);
                        }
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
                      title: const Text('Get in touch',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500,
                          )),
                      trailing:
                          const Icon(Icons.navigate_next, color: Colors.red),
                      //trailing: Icon(Icons.more_vert),
                      onTap: () {
                        Navigator.pushNamed(context, '/getintouch');
                      }),
                ),
              ),
            ])),
      )
    ]);
  }
}
