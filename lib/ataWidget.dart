import 'package:flutter/material.dart';
import 'package:formula1/yardimcilar/islemler.dart';

class AtaWidget extends InheritedWidget {
  final Islemler islem;
  const AtaWidget({Key? key, required Widget child, required this.islem})
      : super(key: key, child: child);

  static AtaWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType(aspect: AtaWidget);
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
