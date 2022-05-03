import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Suruculer(),
    ));

class Suruculer extends StatefulWidget {
  const Suruculer({Key? key}) : super(key: key);

  @override
  State<Suruculer> createState() => _SuruculerState();
}

class _SuruculerState extends State<Suruculer> {
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
            child: ListView(
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
                              "https://cdn-9.motorsport.com/images/mgl/6VRnqmN6/s8/charles-leclerc-ferrari-1.jpg"),
                        ),
                        title: const Text(
                          'Charles LECLERC',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'Monaco driver racing for Ferrari.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/charlesLeclerc');
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
                              "https://wallpapercave.com/wp/wp6307655.jpg"),
                        ),
                        title: const Text(
                          'Carlos SAİNZ',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'Spain driver racing for Ferrari.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/carlosSainz');
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
                              "https://cdn-2.motorsport.com/images/mgl/0rG4r9d2/s800/max-verstappen-red-bull-racing-1.jpg"),
                        ),
                        title: const Text(
                          'Max VERSTAPPEN',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'Netherlands driver racing for Red Bull Racing.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/maxVerstappen');
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
                              "https://cdn-3.motorsport.com/images/mgl/6l9yjoj0/s800/george-russell-mercedes-1.jpg"),
                        ),
                        title: const Text(
                          'George RUSSEL',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'United Kingdom driver racing for Mercedes.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/georgeRussel');
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
                              "https://cdn-3.motorsport.com/images/mgl/0mb95oa2/s800/lewis-hamilton-mercedes-1.jpg"),
                        ),
                        title: const Text(
                          'Levis HAMİLTON',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'United Kingdom driver racing for Mercedes.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/levisHamilton');
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
                              "https://www.avrasyahaberi.com/files/uploads/news/default/20210801-esteban-ocon-kimdir-656363-1ac93f790880827c8aad.jpg"),
                        ),
                        title: const Text(
                          'Esteban OCON',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'France driver racing for Alpine.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/estebanOcon');
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
                              "https://cdn-7.motorsport.com/images/mgl/0a9neZP0/s8/sergio-perez-red-bull-racing-1.jpg"),
                        ),
                        title: const Text(
                          'Sergio PEREZ',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'Mexico driver racing for Red Bull Racing.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/sergioPerez');
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
                              "https://cdn-6.motorsport.com/images/mgl/24vOGKX6/s800/kevin-magnussen-haas-f1-team-1.jpg"),
                        ),
                        title: const Text(
                          'Kevin MAGNUSSEN',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'Denmark driver racing for Hass F1 Team.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/kevinMagnussen');
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
                              "https://cdn-9.motorsport.com/images/mgl/63vAdQEY/s800/valtteri-bottas-alfa-romeo-1.jpg"),
                        ),
                        title: const Text(
                          'Valtteri BOTTAS',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'Finland driver racing for Alfa Romeo.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/valteriBottas');
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
                              "https://cdn-4.motorsport.com/images/mgl/0L1nLWJ2/s8/lando-norris-mclaren-1.jpg"),
                        ),
                        title: const Text(
                          'Lando NORRİS',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'United Kingdom driver racing for McLaren.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/landoNorris');
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
                              "https://cdn-2.motorsport.com/images/mgl/24vA3zN6/s800/yuki-tsunoda-alphatauri-1.jpg"),
                        ),
                        title: const Text(
                          'Yuki TSUNODA',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'Japon driver racing for AlphaTauri.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/yukiTsunoda');
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
                              "https://cdn-5.motorsport.com/images/mgl/0JBnElB0/s500/pierre-gasly-alphatauri-1.jpg"),
                        ),
                        title: const Text(
                          'Pierre GASLY',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'France driver racing for AlphaTauri.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/pierreGasly');
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
                              "https://cdn-5.motorsport.com/images/mgl/YBea5Kv2/s800/fernando-alonso-alpine-1.jpg"),
                        ),
                        title: const Text(
                          'Fernando ALONSO',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'Spain driver racing for Alpine.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/fernandoAlonso');
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
                              "https://cdn-4.motorsport.com/images/mgl/YMdn9Xl2/s8/guanyu-zhou-alfa-romeo-1.jpg"),
                        ),
                        title: const Text(
                          'Zhou GUANYU ',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'China driver racing for Alfa Romeo.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/zhouGuanyu');
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
                              "https://cdn-3.motorsport.com/images/mgl/0a9navN0/s8/mick-schumacher-haas-f1-team-1.jpg"),
                        ),
                        title: const Text(
                          'Mick SCHUMACHER',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'Germany driver racing for Haas F1 Team.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/mickSchumacher');
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
                              "https://cdn-4.motorsport.com/images/mgl/0RrnLBB0/s800/lance-stroll-aston-martin-1.jpg"),
                        ),
                        title: const Text(
                          'Lance STROLL',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'Canada driver racing for Aston Martin.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/lanceStroll');
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
                              "https://www.formula1.com/content/fom-website/en/drivers/alexander-albon/_jcr_content/image16x9.img.1536.high.jpg"),
                        ),
                        title: const Text(
                          'Alexander ALBON',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'Thailand driver racing for Williams.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/alexanderAlbon');
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
                              "https://cdn-2.motorsport.com/images/mgl/24vA4nA6/s800/daniel-ricciardo-mclaren-1.jpg"),
                        ),
                        title: const Text(
                          'Daniel RİCCİARDO',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'Australia driver racing for McLaren.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/danielRicciardo');
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
                              "https://cdn-9.motorsport.com/images/mgl/0k74Ray0/s800/nicholas-latifi-williams-racin-1.jpg"),
                        ),
                        title: const Text(
                          'Nicholas LATIFI',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'Canada driver racing for Williams.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/nicholasLatifi');
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
                              "https://cdn-8.motorsport.com/images/mgl/2jXZrAb6/s8/sebastian-vettel-aston-martin-1.jpg"),
                        ),
                        title: const Text(
                          'Sebastian VETTEL',
                          style: TextStyle(
                            fontFamily: "Merriweather-Italic",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Text(
                          'Germany driver racing for Aston Martin.',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700),
                        ),
                        //trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, '/sebastianVettel');
                        }),
                  ),
                ),
              ],
            ),
          ))
    ]);
  }
}
