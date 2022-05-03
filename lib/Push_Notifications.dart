import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: PushNotifications(),
    ));

class PushNotifications extends StatefulWidget {
  const PushNotifications({Key? key}) : super(key: key);

  @override
  State<PushNotifications> createState() => _PushNotificationsState();
}

class _PushNotificationsState extends State<PushNotifications> {
  bool switchValue1 = false;
  bool switchValue2 = false;
  bool switchValue3 = false;
  bool switchValue4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 226, 12, 12),
        centerTitle: true,
        title: const Text(
          "Push Notifications",
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
              height: 85.0,
              margin: const EdgeInsets.all(10),
              child: Card(
                elevation: 10,
                child: ListTile(
                  //leading: const FlutterLogo(),
                  leading: const Icon(Icons.notifications,
                      color: Colors.red, size: 40.0),
                  title: const Text('Race Notifications',
                      style: TextStyle(
                        fontFamily: "Merriweather-Italic",
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400,
                      )),
                  subtitle: const Text("""Keep up to date with the live action 
May contain spoilers for session and race results"""),
                  /*RollingSwitch(
                      value: true,
                      text: "On",
                      textOff: "Off",
                      colorOn: Colors.red,
                      colorOff: Colors.grey,
                      iconOn: Icons.done,
                      iconsOff: Icons.alarm_off,
                      textSize: 18.0,
                    ),*/

                  trailing: Switch(
                    value: switchValue1,
                    onChanged: (value) {
                      setState(() {
                        switchValue1 = value;
                      });
                    },
                    activeTrackColor: const Color.fromARGB(255, 255, 154, 147),
                    activeColor: const Color.fromARGB(255, 255, 17, 0),
                  ),
                ),
              ),
            ),
            Container(
              height: 85.0,
              margin: const EdgeInsets.all(10),
              child: Card(
                elevation: 10,
                child: ListTile(
                  //leading: const FlutterLogo(),
                  leading: const Icon(Icons.newspaper,
                      color: Colors.red, size: 35.0),
                  title: const Text('News',
                      style: TextStyle(
                        fontFamily: "Merriweather-Italic",
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      )),
                  subtitle:
                      const Text("Follow the latest stories and breaking news"),
                  trailing: Switch(
                    value: switchValue2,
                    onChanged: (value) {
                      setState(() {
                        switchValue2 = value;
                      });
                    },
                    activeTrackColor: const Color.fromARGB(255, 255, 154, 147),
                    activeColor: const Color.fromARGB(255, 255, 17, 0),
                  ),
                  //trailing: Icon(Icons.more_vert),
                ),
              ),
            ),
            Container(
              height: 85.0,
              margin: const EdgeInsets.all(10),
              child: Card(
                elevation: 10,
                child: ListTile(
                  //leading: const FlutterLogo(),
                  leading:
                      const Icon(Icons.info, color: Colors.red, size: 35.0),
                  title: const Text('Inside Info',
                      style: TextStyle(
                        fontFamily: "Merriweather-Italic",
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      )),
                  subtitle: const Text(
                      "Be the first to hear about F1's latest offers, competitions and more"),
                  trailing: Switch(
                    value: switchValue3,
                    onChanged: (value) {
                      setState(() {
                        switchValue3 = value;
                      });
                    },
                    activeTrackColor: const Color.fromARGB(255, 255, 154, 147),
                    activeColor: const Color.fromARGB(255, 255, 17, 0),
                  ),
                  //trailing: Icon(Icons.more_vert),
                ),
              ),
            ),
            Container(
              height: 85.0,
              margin: const EdgeInsets.all(10),
              child: Card(
                elevation: 10,
                child: ListTile(
                  leading:
                      const Icon(Icons.create, color: Colors.red, size: 40.0),
                  title: const Text("Quick Launch Replay",
                      style: TextStyle(
                        fontFamily: "Merriweather-Italic",
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      )),
                  subtitle:
                      const Text("Avoid the results go straight to replay"),
                  trailing: Switch(
                    value: switchValue4,
                    onChanged: (value) {
                      setState(() {
                        switchValue4 = value;
                      });
                    },
                    activeTrackColor: const Color.fromARGB(255, 255, 154, 147),
                    activeColor: const Color.fromARGB(255, 255, 17, 0),
                  ),
                ),
              ),
            )
          ])),
    );
  }
}
