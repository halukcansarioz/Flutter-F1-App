import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:http/http.dart' as http;

class GetinTouch extends StatefulWidget {
  const GetinTouch({Key? key}) : super(key: key);

  @override
  State<GetinTouch> createState() => _GetinTouchState();
}

class _GetinTouchState extends State<GetinTouch> {
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
        'www.formula1.com',
        'en/latest/article.f1-tv-contact-us-en.2OTDW5SgIB5VRfr9Ojume3.html',
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

      RegExp arama = RegExp(
          '<div class="col-lg-8 col-xl-7 offset-xl-1 f1-article--content">(.*?)</div>');

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xfff80000),
        title: const Text(
          "Get in Touch",
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
            Image.network(
                "https://www.kindpng.com/picc/m/789-7893516_f1-logo-hd-png-download.png"),
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: _htmlVeri.isNotEmpty
                    ? SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Html(
                            data: _htmlVeri,
                            style: {
                              "h3": Style(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Merriweather-Italic",
                                  fontStyle: FontStyle.italic),
                              "h2": Style(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Merriweather-Italic",
                                  fontStyle: FontStyle.italic),
                              "a": Style(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Merriweather-Italic",
                                  fontStyle: FontStyle.italic),
                              "br": Style(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Merriweather-Italic",
                                  fontStyle: FontStyle.italic),
                              "p": Style(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
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
                      )),
            Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/F1_70_Logo_retraced.svg/2560px-F1_70_Logo_retraced.svg.png"),
          ],
        ),
      ),
    );
  }
}
