import 'dart:async';

import 'package:formula1/yardimcilar/modeller.dart';
import 'package:http/http.dart' as http;

abstract class Islemler {
  late List<SlaytModeli> slaytlar;
  Future<bool> istek();
  late String veriler;
  late List<AnaKart> kartlar;
}

class IslemDetay implements Islemler {
  @override
  List<SlaytModeli> slaytlar = [];

  @override
  late String veriler;

  @override
  List<AnaKart> kartlar = [];

  @override
  Future<bool> istek() async {
    var url = Uri.https('www.motorsport.com', 'f1/news/', {'q': '{http}'});
    await http.get(url).then((gelenVeri) {
      veriler = gelenVeri.body
          .replaceAll('\n', '')
          .replaceAll('  ', '')
          .replaceAll('\t', '');
    });
    return true;
  }
}
