import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

abstract class YetkiFonksiyonlari {
  Future<String> emailILeGirisYap(String email, String sifre);
  Future<String> emailILeKayitYap(String email, String sifre);
  Future<String> aktifKullanici();
  Future<void> cikisYap();
}

class Yetki implements YetkiFonksiyonlari {
  final FirebaseAuth _firebaseYetkili = FirebaseAuth.instance;
  @override
  Future<String> aktifKullanici() async {
    User kullanici = _firebaseYetkili.currentUser!;
    return kullanici.uid;
  }

  @override
  Future<void> cikisYap() async {
    return _firebaseYetkili.signOut();
  }

  @override
  Future<String> emailILeGirisYap(String email, String sifre) async {
    User kullanici = (await _firebaseYetkili.signInWithEmailAndPassword(
        email: email, password: sifre)) as User;
    return kullanici.uid;
  }

  @override
  Future<String> emailILeKayitYap(String email, String sifre) async {
    User kullanici = (await _firebaseYetkili.createUserWithEmailAndPassword(
        email: email, password: sifre)) as User;
    return kullanici.uid;
  }
}
