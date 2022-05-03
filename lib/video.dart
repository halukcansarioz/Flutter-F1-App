import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:http/http.dart' as http;

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  late String _htmlVeri = '';

  @override
  initState() {
    super.initState();
    _istek();
  }

  Future _istek() async {
    _htmlVeri = '';
    setState(() {});
    var url = Uri.https('www.formula1.com', '/en/video.html', {'q': '{http}'});
    await http.get(url).then((gelenVeri) {
      _htmlVeri = gelenVeri.body
          .replaceAll('\n', '')
          .replaceAll('  ', '')
          .replaceAll('\t', '');
      /* _htmlVeri = _htmlVeri.replaceAll('\n', '');
      _htmlVeri = _htmlVeri.replaceAll('\t', '');
      _htmlVeri = _htmlVeri.replaceAll('  ', ''); */

      RegExp arama =
          RegExp('<div class="f1-race-hub--latest-videos-pattern">(.*?)</div>');

      Match eslesen = arama.firstMatch(_htmlVeri) as Match;

      _htmlVeri = eslesen.group(1)!;

      debugPrint(_htmlVeri);
      setState(() {});
    });
    http.get(url).then((gelenVeri) {
      _htmlVeri = gelenVeri.body;
      debugPrint(_htmlVeri);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xfff80000),
        title: const Text(
          "Video",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: "Merriweather-Italic",
              fontStyle: FontStyle.italic),
        ),
      ),
      /*body: Center(
          child: _htmlVeri.isNotEmpty
              ? SingleChildScrollView(
                  child: Text(_htmlVeri),
                )
              : const CircularProgressIndicator(
                  color: Colors.red,
                )),*/
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: _htmlVeri.isNotEmpty
            ? SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Html(data: _htmlVeri, style: const {}),
                ),
              )
            : const CircularProgressIndicator(
                color: Colors.red,
              ),
      ),
    );
  }
}
