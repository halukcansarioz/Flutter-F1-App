import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formula1/iletisim.dart';
import 'package:url_launcher/url_launcher.dart';

class YanMenu extends StatelessWidget {
  const YanMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25.0),
      child: Drawer(
        //backgroundColor: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/deneme2.jpg'),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.all_inclusive),
                    title: const Text(
                      "Latest",
                      style: TextStyle(
                          fontFamily: "Merriweather-Italic",
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700),
                    ),
                    iconColor: Colors.red,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(height: 1.0, color: Colors.blueGrey),
                  ListTile(
                    leading: const Icon(Icons.web_asset),
                    title: const Text(
                      "Website ",
                      style: TextStyle(
                          fontFamily: "Merriweather-Italic",
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700),
                    ),
                    iconColor: Colors.red,
                    onTap: () async {
                      Navigator.pop(context);
                      const url = 'https://www.formula1.com/';
                      try {
                        bool launched = await launch(url, forceSafariVC: false);
                        if (!launched) {
                          await launch(url, forceSafariVC: false);
                        }
                      } catch (e) {
                        debugPrint('webSite problem: ${e.toString()}');
                        await launch(url, forceSafariVC: false);
                      }
                    },
                  ),
                  const Divider(height: 1.0, color: Colors.blueGrey),
                  ExpansionTile(
                    leading: const Icon(
                      FontAwesomeIcons.hashtag,
                      color: Colors.red,
                      size: 20,
                    ),
                    title: const Text(
                      "Social Media Accounts",
                      style: TextStyle(
                          fontFamily: "Merriweather-Italic",
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700),
                    ),
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(FontAwesomeIcons.facebook,
                              color: Colors.red),
                          title: const Text(
                            "Facebook",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          onTap: () async {
                            Navigator.pop(context);
                            const url = 'https://www.facebook.com/Formula1';
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
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(FontAwesomeIcons.twitter,
                              color: Colors.red),
                          title: const Text(
                            "Twitter",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          onTap: () async {
                            Navigator.pop(context);
                            const url = 'https://twitter.com/f1';
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
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(FontAwesomeIcons.instagram,
                              color: Colors.red),
                          title: const Text(
                            "Instagram",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          onTap: () async {
                            Navigator.pop(context);
                            const url = 'https://www.instagram.com/f1/';
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
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(FontAwesomeIcons.youtube,
                              color: Colors.red),
                          title: const Text(
                            "Youtube",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          onTap: () async {
                            Navigator.pop(context);
                            const url = 'https://www.youtube.com/F1';
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
                          },
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 1.0, color: Colors.blueGrey),
                  ListTile(
                    leading: const Icon(Icons.smart_display),
                    title: const Text(
                      "Video ",
                      style: TextStyle(
                          fontFamily: "Merriweather-Italic",
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700),
                    ),
                    iconColor: Colors.red,
                    onTap: () async {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/video');
                    },
                  ),
                  const Divider(height: 1.0, color: Colors.blueGrey),
                  ListTile(
                    leading: const Icon(Icons.group),
                    title: const Text(
                      "Teams",
                      style: TextStyle(
                          fontFamily: "Merriweather-Italic",
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700),
                    ),
                    iconColor: Colors.red,
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/takimlar');
                    },
                  ),
                  const Divider(height: 1.0, color: Colors.blueGrey),
                  ListTile(
                    leading: const Icon(Icons.flag_outlined),
                    title: const Text(
                      "Racing",
                      style: TextStyle(
                          fontFamily: "Merriweather-Italic",
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700),
                    ),
                    iconColor: Colors.red,
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/pistler');
                    },
                  ),
                  const Divider(height: 1.0, color: Colors.blueGrey),
                  ListTile(
                    leading: const Icon(Icons.sports_motorsports),
                    title: const Text(
                      "Drivers",
                      style: TextStyle(
                          fontFamily: "Merriweather-Italic",
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700),
                    ),
                    iconColor: Colors.red,
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/suruculer');
                    },
                  ),
                  const Divider(height: 1.0, color: Colors.blueGrey),
                  ExpansionTile(
                    leading: const Icon(
                      Icons.person,
                      color: Colors.red,
                    ),
                    title: const Text(
                      "My Account",
                      style: TextStyle(
                          fontFamily: "Merriweather-Italic",
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700),
                    ),
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(Icons.login, color: Colors.red),
                          title: const Text(
                            "Sign in",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/giris');
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(Icons.create, color: Colors.red),
                          title: const Text(
                            "Create your F1® account",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/olustur');
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(Icons.subscriptions,
                              color: Colors.red),
                          title: const Text(
                            "Subscribe",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          subtitle: const Text("Subscribe for all features"),
                          onTap: () async {
                            Navigator.pop(context);
                            const url =
                                'https://www.formula1.com/en/subscribe-to-f1-tv.html#en-TR';
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
                          },
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 1.0, color: Colors.blueGrey),
                  ListTile(
                    leading: const Icon(Icons.group),
                    title: const Text(
                      "Push Notifications",
                      style: TextStyle(
                          fontFamily: "Merriweather-Italic",
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700),
                    ),
                    iconColor: Colors.red,
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/bildirim');
                    },
                  ),
                  const Divider(height: 1.0, color: Colors.blueGrey),
                  ExpansionTile(
                    leading: const Icon(
                      Icons.support,
                      color: Colors.red,
                    ),
                    title: const Text(
                      "Support",
                      style: TextStyle(
                          fontFamily: "Merriweather-Italic",
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700),
                    ),
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(Icons.help, color: Colors.red),
                          title: const Text(
                            "Help",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/help');
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(Icons.group, color: Colors.red),
                          title: const Text(
                            "About",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/about');
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                            leading:
                                const Icon(Icons.feedback, color: Colors.red),
                            title: const Text(
                              "FeedBack",
                              style: TextStyle(
                                  fontFamily: "Merriweather-Italic",
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            subtitle: const Text(
                              "Tell us what you think of the Formula 1® app",
                              style: TextStyle(fontSize: 14.0),
                            ),
                            onTap: () async {
                              Navigator.pop(context);
                              const url =
                                  'https://www.f1fanvoice.com/auth/sign_in';
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
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading:
                              const Icon(Icons.contact_page, color: Colors.red),
                          title: const Text(
                            "Contact",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Iletisim()));
                          },
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 1.0, color: Colors.blueGrey),
                  ExpansionTile(
                    leading: const Icon(
                      Icons.public,
                      color: Colors.red,
                    ),
                    title: const Text(
                      "The World of F1®",
                      style: TextStyle(
                          fontFamily: "Merriweather-Italic",
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700),
                    ),
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(Icons.confirmation_num,
                              color: Colors.red),
                          title: const Text(
                            "Ticket",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          onTap: () async {
                            Navigator.pop(context);
                            const url = 'https://tickets.formula1.com/en';
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
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(Icons.school, color: Colors.red),
                          title: const Text(
                            "Experiences",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          onTap: () async {
                            Navigator.pop(context);
                            const url =
                                'https://f1experiences.com/?utm_source=formula1.com&utm_medium=referral&utm_campaign=general';
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
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(Icons.store, color: Colors.red),
                          title: const Text(
                            "Store",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          onTap: () async {
                            Navigator.pop(context);
                            const url =
                                "https://f1store.formula1.com/en/?_s=bm-fi-f1-prtsite-topnav-230720-jm";
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
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(Icons.sports_esports,
                              color: Colors.red),
                          title: const Text(
                            "Esports",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          onTap: () async {
                            Navigator.pop(context);
                            const url = 'https://f1esports.com/';
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
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(Icons.tips_and_updates,
                              color: Colors.red),
                          title: const Text(
                            "Fantasy",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          onTap: () async {
                            Navigator.pop(context);
                            const url = 'https://fantasy.formula1.com/';
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
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(Icons.play_circle_filled,
                              color: Colors.red),
                          title: const Text(
                            "Play",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          onTap: () async {
                            Navigator.pop(context);
                            const url = 'https://www.f1play.com/';
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
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(Icons.group, color: Colors.red),
                          title: const Text(
                            "Hospitality",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          onTap: () async {
                            Navigator.pop(context);
                            const url =
                                "https://tickets.formula1.com/en/h-formula1-hospitality";
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
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(Icons.speed, color: Colors.red),
                          title: const Text(
                            "Authentics",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          onTap: () async {
                            Navigator.pop(context);
                            const url =
                                "https://tickets.formula1.com/en/h-formula1-hospitality";
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
                          },
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 1.0, color: Colors.blueGrey),
                  ExpansionTile(
                    leading: const Icon(
                      Icons.read_more,
                      color: Colors.red,
                    ),
                    title: const Text(
                      "More Apps From F1®",
                      style: TextStyle(
                          fontFamily: "Merriweather-Italic",
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700),
                    ),
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(Icons.tv, color: Colors.red),
                          title: const Text(
                            "F1 TV",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          onTap: () async {
                            Navigator.pop(context);
                            _urlAc(Platform.isAndroid
                                ? "https://play.google.com/store/apps/details?id=com.formulaone.production&hl=tr&gl=US"
                                : "https://apps.apple.com/tr/app/f1-tv/id1315007279?l=tr");
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading:
                              const Icon(Icons.menu_book, color: Colors.red),
                          title: const Text(
                            "F1 Race Guide",
                            style: TextStyle(
                                fontFamily: "Merriweather-Italic",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          onTap: () async {
                            Navigator.pop(context);
                            _urlAc(Platform.isAndroid
                                ? "https://play.google.com/store/apps/details?id=com.formula1.event&hl=tr&gl=US"
                                : "https://apps.apple.com/tr/app/f1-race-guide/id1332717455?l=tr");
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future _urlAc(String link) async {
  if (await canLaunch(link)) {
    await launch(link);
  } else {
    debugPrint("Gönderdiğiniz linki açamıyorum");
  }
}
