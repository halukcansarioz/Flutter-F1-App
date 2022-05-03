import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp());

class Takimlar extends StatefulWidget {
  const Takimlar({Key? key}) : super(key: key);

  @override
  State<Takimlar> createState() => _TakimlarState();
}

class _TakimlarState extends State<Takimlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff80000),
        centerTitle: true,
        title: const Text(
          "Teams",
          style: TextStyle(
            fontFamily: "Merriweather-Italic",
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10),
            child: Card(
              elevation: 10,
              child: ListTile(
                  //leading: const FlutterLogo(),
                  leading: const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJYe45mmYCZNqNpmLraByTEG5lsRHKKxKssehU19O8AuAVQGe-VgIFlh5rJOhzV3Zyuwc&usqp=CAU"),
                  ),
                  title: const Text(
                    'Ferrari',
                    style: TextStyle(
                      fontFamily: "Merriweather-Italic",
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: const Text(
                    '''Maranello / Italy f1 team.
Carlos SAINZ / Charles LECLERC.''',
                    style: TextStyle(
                        fontFamily: "Merriweather-Italic",
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700),
                  ),
                  //trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                  onTap: () {
                    Navigator.pushNamed(context, '/ferrari');
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Card(
              elevation: 10,
              child: ListTile(
                  //leading: const FlutterLogo(),
                  leading: const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPjDszSValg-nG-kZ7s-xzSBMqJCotLJcZVg&usqp=CAU"),
                  ),
                  title: const Text(
                    'Mercedes',
                    style: TextStyle(
                      fontFamily: "Merriweather-Italic",
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: const Text(
                    '''Brackley / United Kingdom f1 team.
George RUSSEL / Lewis HAMILTON.''',
                    style: TextStyle(
                        fontFamily: "Merriweather-Italic",
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700),
                  ),
                  //trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                  onTap: () {
                    Navigator.pushNamed(context, '/mercedes');
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Card(
              elevation: 10,
              child: ListTile(
                  //leading: const FlutterLogo(),
                  leading: const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://img.favpng.com/15/18/17/red-bull-gmbh-energy-drink-red-bull-racing-logo-png-favpng-PDBdEviw2wsQiEam9rNqYeA0p.jpg"),
                  ),
                  title: const Text(
                    'Red Bull Racing',
                    style: TextStyle(
                      fontFamily: "Merriweather-Italic",
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: const Text(
                    '''Milton Keynes / United Kingdom f1 team.
Max VERSTAPPEN / Sergio PEREZ.''',
                    style: TextStyle(
                        fontFamily: "Merriweather-Italic",
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700),
                  ),
                  //trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                  onTap: () {
                    Navigator.pushNamed(context, '/redbull');
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Card(
              elevation: 10,
              child: ListTile(
                  //leading: const FlutterLogo(),
                  leading: const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://www.pikpng.com/pngl/m/512-5126375_alpine-logo-png-renault-alpine-clipart.png"),
                  ),
                  title: const Text(
                    'Alphine',
                    style: TextStyle(
                      fontFamily: "Merriweather-Italic",
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: const Text(
                    '''Enstone / United Kingdom f1 team.
Fernando ALONSO / Esteban OCON.''',
                    style: TextStyle(
                        fontFamily: "Merriweather-Italic",
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700),
                  ),
                  //trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                  onTap: () {
                    Navigator.pushNamed(context, '/alphine');
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Card(
              elevation: 10,
              child: ListTile(
                  //leading: const FlutterLogo(),
                  leading: const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://cdn-6.motorsport.com/images/mgl/0ZRgKzM0/s800/haas-logo-1.jpg"),
                  ),
                  title: const Text(
                    'Haas F1 Team',
                    style: TextStyle(
                      fontFamily: "Merriweather-Italic",
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: const Text(
                    '''Kannapolis / United States f1 team.
Kevin MAGNUSSEN / Mick SCHUMACHER.''',
                    style: TextStyle(
                        fontFamily: "Merriweather-Italic",
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700),
                  ),
                  //trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                  onTap: () {
                    Navigator.pushNamed(context, '/haas');
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Card(
              elevation: 10,
              child: ListTile(
                  //leading: const FlutterLogo(),
                  leading: const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://w7.pngwing.com/pngs/973/180/png-transparent-alfa-romeo-romeo-car-opkoper-logo-alfa-romeo-emblem-logo-car.png"),
                  ),
                  title: const Text(
                    'Alfa Romeo',
                    style: TextStyle(
                      fontFamily: "Merriweather-Italic",
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: const Text(
                    '''Hinwil / Switzerland f1 team.
Valtteri BOTTAS / Zhou GUANYU.''',
                    style: TextStyle(
                        fontFamily: "Merriweather-Italic",
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700),
                  ),
                  //trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                  onTap: () {
                    Navigator.pushNamed(context, '/alfaromeo');
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Card(
              elevation: 10,
              child: ListTile(
                  //leading: const FlutterLogo(),
                  leading: const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://scuderia.alphatauri.com/wp-content/uploads/2018/10/Scuderia-AlphaTauri-logo-Google.png"),
                  ),
                  title: const Text(
                    'AlphaTauri',
                    style: TextStyle(
                      fontFamily: "Merriweather-Italic",
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: const Text(
                    '''Faenza / Italy f1 team.
Pierre GASLY / Yuki TSUNODA.''',
                    style: TextStyle(
                        fontFamily: "Merriweather-Italic",
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700),
                  ),
                  //trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                  onTap: () {
                    Navigator.pushNamed(context, '/alphatauri');
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Card(
              elevation: 10,
              child: ListTile(
                  //leading: const FlutterLogo(),
                  leading: const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://pbs.twimg.com/profile_images/1495752935539675141/_VlMDA8d_400x400.jpg"),
                  ),
                  title: const Text(
                    'McLaren',
                    style: TextStyle(
                      fontFamily: "Merriweather-Italic",
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: const Text(
                    '''Woking / United Kingdom f1 team.
Lando NORRİS / Daniel RICCIARDO.''',
                    style: TextStyle(
                        fontFamily: "Merriweather-Italic",
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700),
                  ),
                  //trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                  onTap: () {
                    Navigator.pushNamed(context, '/mclaren');
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Card(
              elevation: 10,
              child: ListTile(
                  //leading: const FlutterLogo(),
                  leading: const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://yt3.ggpht.com/NxlWapVIgod4rQXUyUtZ7FIxhTE94PypyofyHB1HKrAq1X3upT9QBrXZWfuV2Nrx4Yagn2D8J-s=s900-c-k-c0x00ffffff-no-rj"),
                  ),
                  title: const Text(
                    'Aston Martin',
                    style: TextStyle(
                      fontFamily: "Merriweather-Italic",
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: const Text(
                    '''Silverstone / United Kingdom f1 team.
Sebastian VETTEL / Lance STROLL.''',
                    style: TextStyle(
                        fontFamily: "Merriweather-Italic",
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700),
                  ),
                  //trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                  onTap: () {
                    Navigator.pushNamed(context, '/astonmartin');
                  }),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Card(
              elevation: 10,
              child: ListTile(
                  //leading: const FlutterLogo(),
                  leading: const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://soymotor.com/sites/default/files/imagenes/equipo/logo-williams-f1-2021.png"),
                  ),
                  title: const Text(
                    'Williams',
                    style: TextStyle(
                      fontFamily: "Merriweather-Italic",
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: const Text(
                    '''Grove / United Kingdom f1 team.
Nicholas LATİFİ / Alexander ALBON.''',
                    style: TextStyle(
                        fontFamily: "Merriweather-Italic",
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700),
                  ),
                  //trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                  onTap: () {
                    Navigator.pushNamed(context, '/williams');
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
