import 'dart:io';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:formula1/yanmenu.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  /*GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();*/
  late CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    "assets/images/Anasayfa7.jpg",
    "assets/images/Anasayfa1.jpg",
    "assets/images/Anasayfa2.jpg",
    "assets/images/Anasayfa3.jpg",
    "assets/images/Anasayfa4.jpg",
    "assets/images/Anasayfa5.jpg",
    "assets/images/Anasayfa6.jpg",
    "assets/images/Anasayfa8.jpg",
    "assets/images/Anasayfa9.jpg",
    "assets/images/Anasayfa10.jpg",
    "assets/images/Anasayfa11.jpg",
    "assets/images/Anasayfa12.jpg",
    "assets/images/Anasayfa13.jpg",
    "assets/images/Anasayfa14.jpg",
    "assets/images/Anasayfa15.jpg",
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  String _htmlVeri = '';

  @override
  initState() {
    super.initState();
    _istek();
  }

  Future _istek() async {
    _htmlVeri = '';
    setState(() {});
    var url = Uri.https(
        'bleacherreport.com',
        'articles/1958704-ranking-the-top-25-circuits-in-the-history-of-formula-1',
        {'q': '{http}'});
    await http.get(url).then((gelenVeri) {
      _htmlVeri = gelenVeri.body
          .replaceAll('\n', '')
          .replaceAll('  ', '')
          .replaceAll('â', '')
          .replaceAll('’', '')
          .replaceAll('\t', '');
      /*  _htmlVeri = _htmlVeri.replaceAll('\n', '');
      _htmlVeri = _htmlVeri.replaceAll('\t', '');
      _htmlVeri = _htmlVeri.replaceAll('  ', ''); */

      RegExp arama = RegExp('<ol>(.*?)</ol>');

      Match eslesen = arama.firstMatch(_htmlVeri) as Match;

      _htmlVeri = eslesen.group(1)!;

      //debugPrint(_htmlVeri);

      setState(() {});

      /* http.get(url).then((gelenVeri) {
      _htmlVeri = gelenVeri.body;
      debugPrint(_htmlVeri);
    });*/
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            _scaffold.currentState?.openDrawer();
          },
          tooltip: 'Yan Menüyü Aç',
        ),*/
        //backgroundColor: const Color.fromARGB(255, 226, 12, 12),
        title: const Text(
          'Formula 1',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: "Merriweather-Italic",
              fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  /*colors: <Color>[
                Color(int.parse("0x66f80000")),
                Color(int.parse("0x99f80000")),
                Color(int.parse("0xccf80000")),
                Color(int.parse("0xfff80000")),*/
                  colors: <Color>[
                Color(int.parse("0xfff80000")),
                Color(int.parse("0xfff80000")),
                Color(int.parse("0xfff80000")),
                Color(int.parse("0xfff80000")),
              ])),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              _urlAc(Platform.isAndroid
                  ? "market:details?id=com.uygulama.formula1"
                  : "itms-apps://itunes.apple.com/us/app/id123456789");
            },
            icon: const Icon(
              Icons.star,
            ),
            tooltip: 'Paun Ver',
          ),
          IconButton(
            onPressed: () {
              Share.share("""Have you downloaded our f1 app?\n
                  Android:https://play.google.com/store/apps/details?id=com.uygulama.formula1_deneme2 \n
                  İOS: https://itunes.apple.com/us/app/id123456789""");
            },
            icon: const Icon(
              Icons.share,
            ),
            tooltip: 'Paylaş',
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            carouselSlider = CarouselSlider(
              height: 200.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: const Duration(seconds: 4),
              autoPlayAnimationDuration: const Duration(milliseconds: 3000),
              pauseAutoPlayOnTouch: const Duration(seconds: 10),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: imgList.map((imgAsset) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent[100],
                      ),
                      child: Image.asset(
                        imgAsset,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index ? Colors.red : Colors.black26),
                );
              }),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "What is FORMULA 1? ",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """
Formula One is one of the most popular sports in the world. It is the highest class of international racing for single-seater formula racing cars. Formula One is sanctioned by the Fédération Internationale de l’Automobile (FIA) which was established on 20 June 1904. Formula One was inaugurated on 13 May 1950 as the World Drivers’ Championship at Silverstone in the United Kingdom. In 1981 it became known as the FIA Formula One World Championship.

Several races called Grand Prix are held all over the world over a season. These races taken together are called a Formula One season. The word ‘Formula” refers to a set of rules that all participating teams have to adhere to. Grand Prix is a French word that translates as grand prize in English. The races are run of tracks that are graded “1” by the FIA. Hence the name Formula One was adopted.

The races take place on purpose-built tracks certified by the FIA. Most tracks are situated in remote locations well connected with cities. There are a few races such as the British Grand Prix and the Singapore Grand Prix that are held on closed public roads. Formula One is one of the premium forms of racing around the world and draws huge audiences.

A driver participating in a Formula One race should hold a valid Super Licence issued by the FIA. The performance of the drivers and the constructors of the car are evaluated at the end of each race by a points system. At the end of a season, the FIA aggregates the points scored by each and awards two annual World Championships: one each for the drivers and the constructors.

""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "What is FORMULA 1? ",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                  fontSize: 20.0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "How did Formula 1 start?",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """
The origins of Formula One can be traced back to the European Championship of the 1920s and 1930s. World War II put to a stop all racing in Europe. Some motor-racing enthusiasts started racing motor cars after World War II. In 1946 Formula One was agreed as a set of rules that all competitors must comply to. The 1946 Turin Grand Prix was the first Formula One Grand Prix event held.

Although many Grand Prix organisations across Europe had formulated rules for Grand Prix racing, racing was suspended because of the conflict. The World Drivers’ Championship was formalised in 1947. The first world championship race was held at Silverstone in Great Britain in 1950. The World Constructors’ Championship followed eight years later.
""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Who won the first Formula 1 World Championship?",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """The Italian driver Guiseppe Farina, driving an Alfa Romeo, narrowly defeated Juan Manuel Fangio, the Argentine and his teammate, to walk away with the first World Championship for Drivers crown. Fangio came back strongly to win the 1951 championship. The Argentinian followed that up with victories in 1954, 1955, 1956 and 1957 setting an early record for four consecutive titles that stood for 45 years.
The early years of the car saw road car manufacturers like Mercedes-Benz, Alfa Romeo, Ferrari and Maserati racing their cars. These were the same manufacturers who had competed before the world war. The cars were front-engined and were powered by supercharged 1.5 litres engines or 4.5 litres naturally aspirated engines. Mercedes introduced the W196 with fuel injection in 1954 when the new formula limited engines to 2.5 litres.""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "What were the F1 technical and engineering changes in the ‘60s and ‘70s?",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """Over the next two decades, the teams saw the need for specially engineered cars for World Championship racing. Jack Brabham’s success in 1959, 1960 and 1966 made mid-engined cars popular in championship racing. The Fergusson P99 was the last front-engined car to compete in the World Championships at the 1961 British Grand Prix.
In 1962 Lotus came up with the greatest technological breakthrough for mid-engined cars. They introduced the aluminium monocoque chassis to the racing world marking the end of the space-frame chassis. Cigarette sponsors started advertising their products on racing cars starting with Imperial Tobacco in 1968. That marked the beginning of sponsorship in motor car racing.
Aerodynamics started to make an appearance in the World Championships with the advent of aerofoils in the late 1960s. Lotus came up with a way to increase cornering speeds by introducing ground-effect aerodynamics. The downforce thus created needed stiff springs to maintain a constant ride height. Drivers had to rely solely on cushioning from the tyres for any comfort while driving.""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "How does F1 make so much money?",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """When in 1971, Bernie Eccelstone bought the Brabham Team, he earned a seat on the Formula One Constructors’ Association (FOCA). He became the president of the association in 1978. Before Eccelsstone’s intervention, the circuit owners negotiated with individual teams. Eccelstone persuaded the FOCA to offer the circuit owners a collective deal which proved beneficial to the constructors.
Fédération Internationale du Sport Automobile (FISA) was formed in 1979 and it immediately proceeded to assert its right over television revenues. When FOCA had a dispute with FISA over technical regulations, FOCA boycotted a Grand Prix. FISA was forced to withdraw its sanctions from the race. FISA also later ceded the administration of television rights to FOCA.
There were further disputes. Constructors were coming out with turbocharged engines that were producing power over 1,300 bhp (BMW in 1986). FISA had already banned ground effect aerodynamics in 1983. The FIA reduced fuel tank capacity to reduce the power output of the engines in 1984. Ultimately, the FIA altogether banned turbocharged engines in 1989.
Lotus first unveiled a car with active suspension on Lotus 91 in 1982. By 1987, Ayrton Senna had driven his actively suspended car to victory in the Monaco Grand Prix. Electronic driver aids, semi-automatic gearboxes and traction control started being introduced by the teams. Amid complaints that technology had more of a say in determining the outcome of races, the FIA banned many of these aids.
But Formula One became a big business with sponsors pouring in money. Television rights earned a lot of money for both the FIA and the teams. Teams started spending hundreds of millions of dollars in developing cars that will win the championship. The teams signed a second Concorde Agreement in 1992 and a third in 1997.""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "What is the F1 Concorde Agreement?",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """The F1 Concorde Agreement is a contract signed between the FIA, the Formula One teams, and the Formula One Group. It is a contract by which the three parties agree on how to divide the television revenues among themselves. The agreement has resulted in increased professionalism and an increase in revenue for the sport.s
Eight Concorde Agreements have been signed so far. While the latest agreement was signed in 2020, other agreements were signed in 1981, 1987, 1992, 1997, 1998, 2009 and 2013. The agreements also encourage teams to participate in all Grands Prix. This is beneficial to broadcasters who invest heavily in the television rights for the sport.""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "What rule changes did the FIA make in the 1990s and why?",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """While Brabham was competitive during the early eighties, McLaren and Williams had dominated most of the decade and the following decade. Between 1988 and 1993 till Alain Prost retired, the rivalry between him and Ayrton Senna came into focus. Ayrton Senna died at the San Marino Grand Prix in 1994 causing the FIA to concentrate on driver safety.
Matters were not helped when Roland Ratzenberger died the same weekend. The FIA immediately made rule changes unilaterally using safety as the reason. Under the Concorde agreement, these changes would have to be agreed upon by all three parties. Intending to reduce speed, the FIA stipulated narrow rear tyres for the competing cars.
The narrower grip of the tyres resulted in the designers responding with more downforce generated in their cars. The resulting turbulent air in the wake of the car made overtaking difficult. To hold the grooved tread blocks of the tyres, the compound used in making the tyres was harder. The harder compound could not grip the track well and this led to many spectacular accidents.
McLaren, Ferrari, Williams and Renault shared all the Constructors’ Championships from 1979 to 2008 between them. They also won all the World Championships from 1984 to 2008. They were dubbed the “Big Four” by the media. At the same time, the technological advances made the cost of competing in Formula One increase dramatically.
The Big Four were funded by big car manufacturing corporations. The weaker and poorer teams found the going difficult. These teams could not be competitive and struggled to stay in Formula One racing. Many teams withdrew from the competition. Twenty-eight teams have withdrawn from Formula One since 1990 which made Eddie Jordan remark that the days of private competitors were over.""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Why did the FIA change rules between 1999 and 2006?",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """Between 1999 and 2004, Michael Schumacher won five consecutive Drivers’ Championships driving a Ferrari. He had done better than Jose Manuel Fangio 45 years back. Ferrari won six Constructors’ Championships on the trot. Schumacher retired in 2006 but returned to Formula One racing in 2010 when Mercedes also returned to the fray.
All the while the FIA was busy changing the rules to improve competitiveness and cut costs. Teams were blatantly using Team Orders to manipulate races and the FIA promptly banned them. Amendments were made to the points awarding system, qualifying system and technical regulations. Time was stipulated for how long engines and tyres should last.
In 2000, Ford purchased Stewart Grand Prix and formed the Jaguar Racing team. New manufacturer-owned teams like Toyota, Renault, Honda, BMW and Ferrari took to Formula One. McLaren, partly owned by Mercedes was the only exception and remained put. The new teams took five of the top six places and dominated the championship. The manufacturers, through the Grand Prix Manufacturers Association, negotiated a larger share of Formula One’s revenues and a larger say in the conduct of the sport.""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Why did private competitors return to Formula One after 2008?",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """In 2008, the world economy crashed. Manufacturers like BMW, Honda and Toyota withdrew from Formula One over 2008 and 2009 citing economic recession. While Peter Sauber, the founder of the team bought BMW F1, Honda became Brawn GP. The Renault team was bought by Genii Capital. Jenson Button won the 2009 World Championship for Brawn GP.
While McLaren bought back its share from Mercedes in 2010, Mercedes bought Brawn GP to join Formula One. The only car manufacturers in the sport now were McLaren, Renault, Mercedes and Ferrari. To replace the manufacturer’s teams, four new teams were admitted into Formula One. They were the US F1 Team, Hispania Racing, Team Lotus and Virgin Racing.
The new entrants to Formula One were ill-prepared for the expenditure incurred in Formula One racing. Moreover, the proposed cost caps were repealed three times. The newer teams, not having the budget of the more established teams inevitably finished at the back of the field. By 2016 all four teams had collapsed.""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "What was the major F1 rule shake-up in 2014?",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """In 2014 the FIA, to increasing fuel efficiency and better energy-recovery, stipulated that all cars will be fitted with 1.6 litres, turbocharged V6 engines. The manufacturers were pleased because their road car customers could easily identify with the engine size. Each car would be allowed four engines per season.
Honda returned to Formula One in 2015. But Mercedes has won both the World Drivers’ Championship and the World Constructors Championship since 2014. Lewis Hamilton has won six drivers’ championships driving for Mercedes while Nico Rosberg won the 2016 title. In 2014, Marussia and Caterham teams were put into administration. The futures of Sauber and Force India were also in doubt.
The Haas F1 Team joined formula One in 2016. After Honda’s rejoining in 2015, Renault joined Formula One as a team in 2018. Later years saw more manufacturers joining the ranks. In 2018, Alfa Romeo sponsored Sauber. The same year, Aston Martin volunteered to sponsor Red Bull. Sauber was rebranded as Alfa Romeo Racing the following year. The Racing Point team was rebranded as Aston Martin for the 2021 season after the intervention of Lawrence Stroll.
A new Concorde Agreement was signed by all 10 teams in 2020 binding them to the sport till 2025. In the agreement, all the teams agreed to a budget cap of 145M dollar for car development. The aim was to support equal competition and to promote sustainable development. The 2020 Formula One season had to be delayed and rescheduled because of the COVID19 pandemic.""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "What is a Formula One Grand Prix?",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """A Formula One Grand Prix is held over a weekend. Friday is designated as a practice session day when two free practice sessions are held. Practice sessions are moved a day forward in Monaco and held on Thursday. Third drivers are allowed to practice on Fridays but they have to use a car designated for a race driver as only two cars are allowed for a race.
Qualifying sessions are held on Saturdays and the session will determine the starting order for the race. The Grand Prix is held on Sunday and is the main event of the weekend. On all the weekend days circuits organise various entertainment events for the attending fans. The best events are scheduled after the Grand Prix on Sunday.""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "What is a Formula 1 qualifying session?",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """F1 Qualifying Sessions are when the drivers strive to set the fastest lap times which will determine their starting place on the starting grid. In Q1, the first qualifying session, the slowest five drivers are allotted the last five places on the grid. The remaining 15 drivers (there are only 20 cars in a race) decide the next worst five starting positions in Q2.
In Q3 (Qualifying 3), the last ten drivers contest for the best place on the starting grid. The drivers get 15 minutes to set their fastest lap times. The driver with the fastest lap time is awarded the pole position on the starting grid. The remaining drivers are ranked according to their fastest lap times and will take their designated places at the start of the race.
A set of soft tyres are allocated to drivers qualifying for Q3. These tyres must be returned by the drivers after the qualifying round. The driver that reached Q3 must start the race with the tyres that they used in Q2 unless the track conditions and the weather require otherwise. All other drivers are free to choose the tyres that they want at the start of the race.
If a car does not meet FIA scrutiny, the driver will be barred from qualifying sessions. The car has to start from the last position on the grid for the race. Any penalties during qualifying are applied at the end of qualifying. The penalty will determine the driver’s starting position in the race. Infractions may include changing a gearbox or an engine component.""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "How long is a Formula 1 Grand Prix race?",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """A Grand Prix race starts with a warm-up lap, called the formation lap. At the end of the lap, the drivers assemble at their designated places on the starting grid. Five red lights are illuminated at an interval of one second above the track. The race starts when all these five lights are extinguished simultaneously. If a car stalls, the race is restarted.
The race may also be restarted in case of a serious accident or inclement weather. The drivers will reassemble in the starting format and the race will restart from a standstill. The race, if stopped early after the start due to heavy rainfall or due to any other circumstances, will restart from a standstill.
A Grand Prix race is limited to a maximum of two hours. The FIA has standardised the distance over which cars race to 305 km. However, slower tracks like Monaco have a shorter distance to cover to enable the cars to complete the race within the stipulated time. Drivers are allowed pit stops to change tyres or other damaged components.""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "What is the role of the Race Director in F1?",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """The race director is responsible for managing the race. He inspects the cars before the race and controls the lights at the start of a race. In general, he enforces the rules of the FIA. He also plays a role in sorting disputes among teams and drivers. Among his many other duties, he determines and awards penalties if any are due, to teams and drivers.""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "What does the Safety Cars do in F1?",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """The safety car is deployed in case of an accident or there is a risk to the competitors, spectators or marshals. When a safety car is deployed, a yellow flag is waved and drivers are obliged to slow down and maintain position with overtaking forbidden. Pit stops are allowed during the time a safety car is deployed. Once the safety car withdraws the race resumes with a rolling start.
The lead driver will lead the cars to the timing line. Once the cars cross the timing line drivers can race and compete for a place position. Companies like Mercedes-Benz and Aston Martin supply outfitted cars to the FIA to be used as Safety Cars. Various flags are used to indicate dangerous situations on or near the track. A green flag means normal racing conditions.""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Why is Formula One so expensive?",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """Running and maintaining a Formula One team is a very costly affair. That makes Formula One one of the costliest sports in the World. The FIA recognises this and is taking vigorous measures to minimise the costs incurred in owning a Formula One team.
A Formula One team has to first develop a car. It has to also maintain a staff of hundreds of people and pay them throughout the year. The staff will consist of managers, designers engineers and mechanics, Besides these, there is the support staff. These people are skilled in their jobs and have to be paid substantial wages.
There are costs of air freight to ferry the vehicles, spares and personnel to the various venues in the world. Special purpose vehicles are needed to transport the cars and other materials from the airport to the venue. The personnel have to be accommodated at or near the venues. The team has to bear all these costs and they make up quite a bit.
In 2020, the teams and the FIA signed a Concorde Agreement that limits the teams’ expenditure to 145M dollar. The budget cap excludes the salaries of the top management, drivers, engines and a few other things. They have also agreed to use the same cars used in 2020.
All teams are secretive about their actual expenditure in a season. That makes it difficult to state an exact figure of expenditure for any team. But a rough estimate is that a poorer team will spend at least 160M dollar in a season. The annual spending of a team with access to money could be upward of 400M. dollar""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/F1_70_Logo_retraced.svg/2560px-F1_70_Logo_retraced.svg.png"),
          ])),
      drawer: const YanMenu(),
    );
  }
}

Future _urlAc(String link) async {
  if (await canLaunch(link)) {
    await canLaunch(link);
  } else {
    debugPrint("Gönderdiğiniz linki açamıyorum");
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text('Animate Slowly'),
      value: timeDilation != 1.0,
      onChanged: (bool? value) {
        setState(() {
          timeDilation = value! ? 10.0 : 1.0;
        });
      },
      secondary: const Icon(Icons.hourglass_empty),
    );
  }
}
