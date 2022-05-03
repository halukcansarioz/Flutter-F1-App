import 'package:flutter/material.dart';
import 'package:formula1/yetki/yetki.dart';

class YetkiSaglayici extends InheritedWidget {
  final YetkiFonksiyonlari yetki;
  const YetkiSaglayici(
    Key key,
    Widget child,
    this.yetki,
  ) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static YetkiSaglayici of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType(aspect: YetkiSaglayici)
        as YetkiSaglayici;
  }
}
