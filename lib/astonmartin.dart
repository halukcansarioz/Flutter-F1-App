import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:http/http.dart' as http;

class AstonMartin extends StatefulWidget {
  const AstonMartin({Key? key}) : super(key: key);

  @override
  State<AstonMartin> createState() => _AstonMartinState();
}

class _AstonMartinState extends State<AstonMartin> {
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
        'www.formula1.com', '/en/teams/Aston-Martin.html', {'q': '{http}'});
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

      RegExp arama = RegExp('<section class="information">(.*?)</section>');

      Match eslesen = arama.firstMatch(_htmlVeri) as Match;

      _htmlVeri = eslesen.group(1)!;

      debugPrint(_htmlVeri);

      setState(() {});

      /* http.get(url).then((gelenVeri) {
      _htmlVeri = gelenVeri.body;
      debugPrint(_htmlVeri);
    });*/
    });
  }

  late CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    "assets/images/AstonMartin1.jpg",
    "assets/images/AstonMartin2.jpg",
    "assets/images/AstonMartin3.jpg",
    "assets/images/AstonMartin4.jpg",
    "assets/images/AstonMartin5.jpg",
    "assets/images/AstonMartin6.jpg",
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xfff80000),
        title: const Text(
          "Aston Martin",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: "Merriweather-Italic",
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
                    color: _current == index ? Colors.red : Colors.black26,
                  ),
                );
              }),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlinedButton(
                  onPressed: goToPrevious,
                  child: const Text("<", style: TextStyle(color: Colors.blue)),
                ),
                OutlinedButton(
                  onPressed: goToNext,
                  child: const Text(">", style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: _htmlVeri.isNotEmpty
                    ? SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Html(
                            data: _htmlVeri,
                            style: {
                              "a": Style(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Merriweather-Italic",
                                  fontStyle: FontStyle.italic),
                              "br": Style(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Merriweather-Italic",
                                  fontStyle: FontStyle.italic),
                              "p": Style(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Merriweather-Italic",
                                  fontStyle: FontStyle.italic),
                              "div": Style(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w200,
                                  fontFamily: "Merriweather-Italic",
                                  fontStyle: FontStyle.italic),
                            },
                          ),
                        ),
                      )
                    : const CircularProgressIndicator(
                        color: Colors.red,
                      ))
          ],
        ),
      ),
    );
  }

  goToPrevious() {
    carouselSlider.previousPage(
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() {
    carouselSlider.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}
