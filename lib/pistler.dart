import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class Pistler extends StatelessWidget {
  const Pistler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xfff80000),
        title: const Text(
          "Racing",
          style: TextStyle(
            fontFamily: "Merriweather-Italic",
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                const Text(
                  '''               Bahraın GP
Bahraın International Cırcuit''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w900,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2019_bhr_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xfff80000),
                          ),
                        ),
                        const Text(
                          '''Km: 5.412 km (3.363 mi)
Type : Race Track
Direction : Clockwise
Seasons : 2004–2010, 2012–2021
Grand Prix : Bahreyn-Sakhir Grand Prix ''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''  Saudi ArabıanGP
Jettah Street Cırcuit''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2021_sau_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 6.175 km (3.837 mi)
Type : Street Track
Direction : Clockwise
Seasons : 2021
Grand Prix : Suudi Arabistan Grand Prix ''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''Australlıan GP  
  Albert Park''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2019_aus_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km : 5.303 km (3.295 mi)
Type : Street Track
Direction : Clockwise
Seasons : 1996–2019
Grand Prix : Avustralya Grand Prix ''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''           Emilia Romagna GP  
Autodromo Enzo E Dıno Ferrari''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2020_ero_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km : 4.909 km (3.050 mi)
Type : Race Track
Direction : Counter Clockwise
Seasons : 1980–2006, 2020–2021
Grand Prix : Emilia Romagna - İtalya - San Marino Grand Prix ''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''                      Miami GP
Miami International Autodrome''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/image.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 5.410 km (3.361 mi)
Type : Street Track
Direction : Counter Clockwise
Seasons : 2022
Grand Prix : Miami Grand Prix''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''       Spanish GP
Circuit De Catalunya''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2019_esp_outline (1).png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 4.675 km (2.905 mi)
Type : Street Track
Direction : Clockwise
Seasons : 1991–2021
Grand Prix : Spain Grand Prix''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''       Monaco GP
Circuit De Monaco''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2019_mco_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 3.337 km (2.074 mi)
Type : Street Track
Direction : Clockwise
Seasons : 1950, 1955–2019
Grand Prix : Monaco Grand Prix''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''  Azerbaıjan GP
Baku Cıty Cırcuit''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2019_aze_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 6.003 km (3.730 mi)
Type : Street Track
Direction : Counter Clockwise
Seasons : 1950, 1955–2019
Grand Prix : Azerbaıjan - Europe  Grand Prix''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''           Canadıan GP
Cırcuit Gılles Vıllemeuve''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2019_can_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 4.361 km (2.710 mi)
Type : Race Track
Direction : Clockwise
Seasons : 1978–1986, 1988–2008, 2010–2019
Grand Prix : Canadıan Grand Prix''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''       Brıtısh GP
Cırcuit Sılverstone''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2019_gbr_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 5.891 km (3.66 mi)
Type : Street Track
Direction : Clockwise
Seasons : 1950–1954, 1956, 1958, 1960, 1963, 1965, 1967, 1969, 1971, 1973, 1975, 1977, 1979, 1981, 1983, 1985, 1987–2020
Grand Prix : Brıtısh - 70th Anniversary Grand Prix''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''  Austrian GP
Red Bull Racing''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2019_aut_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 4.318 km (2.683 mi)
Type : Race Track
Direction : Clockwise
Seasons : 1970–1987, 1997–2003, 2014–2020
Grand Prix : Austrian - Steiermark Grand Prix''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''        French GP
Cırcuit Paul Rıcard''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2019_fra_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 4.318 km (2.683 mi)
Type : Race Track
Direction : Clockwise
Seasons : 1971, 1973, 1975–1976, 1978, 1980, 1982–1983, 1985–1990, 2018–2019
Grand Prix : French Grand Prix''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''Hungarian GP
Hungaroring''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2019_hun_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 4.381 km (2.722 mi)
Type : Race Track
Direction : Clockwise
Seasons : 1986–2020
Grand Prix : Hungarian Grand Prix''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''         Belgian GP
Spa-Francorchamps''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2019_bel_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 7.004 km (4.352 mi)
Type : Race Track
Direction : Clockwise
Seasons : 1950–1956, 1958, 1960–1968, 1970, 1983, 1985–2002, 2004–2005, 2007–2020
Grand Prix : Belgian Grand Prix''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''       Dutch GP
Cırcuit Zandvoort''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2020_nld_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 4.252 km (2.642 mi)
Type : Race Track
Direction : Clockwise
Seasons : 1952–1953, 1955, 1958–1971, 1973–1985
Grand Prix : Holland Grand Prix''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''                   Italıan GP
Autodromo Nazıonale Monza''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2019_ita_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 4.309 km (2.677 mi)
Type : Race Track
Direction : Clockwise
Seasons : 1952–1953, 1955, 1958–1971, 1973–1985
Grand Prix : Italıan Grand Prix''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''     Russian GP
Sochi Autodrom''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2019_rus_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 5.848 km (3.634 mi)
Type : Race Track
Direction : Clockwise
Seasons : 2014–2020
Grand Prix : Russian Grand Prix''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''           Singapore GP
Marina Bay Street Circuit''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2019_sgp_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 5.063 km (3.146 mi)
Type : Street Track
Direction : Counter Clockwise
Seasons : 2008 - 2019 
Grand Prix : Singapore Grand Prix''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''  Japonese GP
Suzuka Circuit''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2019_jap_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 5.807 km (3.608 mi)
Type : Race Track
Direction : Clockwise (8-format)
Seasons : 1987–2006, 2009–2019
Grand Prix : Japonese Grand Prix''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''       United States GP
Circuit Of The Americas''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2019_usa_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 5.513 km (3.426 mi)
Type : Race Track
Direction : Counter Clockwise 
Seasons : 2012–2019
Grand Prix : United States Grand Prix''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''                   Mexiacan GP
Autodromo Hermanos Rodriguez''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2019_mex_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 4.304 km (2.674 mi)
Type : Race Track
Direction : Clockwise 
Seasons : 2012–2019
Grand Prix : Mexiacan - Mexico City Grand Prix''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''                         Brezillian GP
Autodromo Jose Carlos Pace Interlacos''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2019_bra_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 4.909 km (3.050 mi)
Type : Race Track
Direction : Counter Clockwise 
Seasons : 2012–2019
Grand Prix : Italian - San Marino - Emilia Romagna  Grand Prix''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  '''     Abu Dhabi GP
Yas Marina Circuit''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Merriweather-Italic",
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: const EdgeInsets.all(20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade800),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/track/f1_2019_abu_outline.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xfff80000)),
                        ),
                        const Text(
                          '''Km: 5.554 km (3.451 mi)
Type : Race Track
Direction : Counter Clockwise 
Seasons : 2012–2019
Grand Prix : Abu Dabi Grand Prix''',
                          style: TextStyle(
                              fontFamily: "Merriweather-Italic",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
/*
class Pistler extends StatefulWidget {
  const Pistler({Key? key}) : super(key: key);

  @override
  State<Pistler> createState() => _PistlerState();
}

class _PistlerState extends State<Pistler> {
  @override
  Widget build(BuildContext context) {
    return 
  }
}*/
