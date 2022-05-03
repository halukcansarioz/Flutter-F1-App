import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:formula1/App_Terms_of_Use.dart';
import 'package:formula1/Cookie_Policy.dart';
/*import 'package:formula1/Frequently_Asked_Questions.dart';*/
import 'package:formula1/Get_in_touch.dart';
import 'package:formula1/Privacy_Policy.dart';
import 'package:formula1/about.dart';
import 'package:formula1/alexanderAlbon.dart';
import 'package:formula1/alfaromeo.dart';
import 'package:formula1/alphatauri.dart';
import 'package:formula1/alphine.dart';
import 'package:formula1/astonmartin.dart';
import 'package:formula1/ataWidget.dart';
import 'package:formula1/carlosSainz.dart';
import 'package:formula1/chalesLeclerc.dart';
import 'package:formula1/danielRicciardo.dart';
import 'package:formula1/estebanOCON.dart';
import 'package:formula1/fernandoAlonso.dart';
import 'package:formula1/georgeRussel.dart';
import 'package:formula1/haas.dart';
import 'package:formula1/help.dart';
import 'package:formula1/kevinMagnussen.dart';
import 'package:formula1/lanceStroll.dart';
import 'package:formula1/landoNorris.dart';
import 'package:formula1/levisHamilton.dart';
import 'package:formula1/maxVerstappen.dart';
import 'package:formula1/mclaren.dart';
import 'package:formula1/mercedes.dart';
import 'package:formula1/mickSchumacher.dart';
import 'package:formula1/nicholasLatifi.dart';
import 'package:formula1/pierreGasly.dart';
import 'package:formula1/pistler.dart';
import 'package:formula1/redbull.dart';
import 'package:formula1/screens/Create_an_f1.dart';
import 'package:formula1/screens/home_screen.dart';
import 'package:formula1/screens/loginPage.dart';
import 'package:formula1/screens/login_basarili.dart';
import 'package:formula1/sebastianVettel.dart';
import 'package:formula1/sergioPerez.dart';
import 'package:formula1/suruculer.dart';
import 'package:formula1/takimlar.dart';
import 'package:formula1/valteriBottas.dart';
//import 'package:formula1/video.dart';
import 'package:formula1/williams.dart';
import 'package:formula1/anasayfa.dart';
import 'package:formula1/ferrari.dart';
import 'package:formula1/iletisim.dart';
import 'package:formula1/yardimcilar/islemler.dart';
import 'package:formula1/yukiTsunoda.dart';
import 'package:formula1/zhouGuanyu.dart';
import 'Official_F1_Race_Guide_App_Terms_and_Conditions.dart';
import 'Push_Notifications.dart';
import 'ataWidget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AtaWidget(islem: IslemDetay(), child: const AnaGiris()));
}

class AnaGiris extends StatefulWidget {
  const AnaGiris({Key? key}) : super(key: key);

  @override
  State<AnaGiris> createState() => _AnaGirisState();
}

class _AnaGirisState extends State<AnaGiris> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    AtaWidget.of(context)?.islem.istek().then((deger) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const AnaSayfa(),
      /* _veriVar
          ? AnaSayfa()
          : const Center(child: CircularProgressIndicator(color: Colors.red)),*/
      routes: rotalar,
      debugShowCheckedModeBanner: false,
    );
  }
}

var rotalar = <String, WidgetBuilder>{
  "/anasayfa": (BuildContext context) => const AnaSayfa(),
  "/iletişim": (BuildContext context) => const Iletisim(),
  "/help": (BuildContext context) => const Help(),
  "/getintouch": (BuildContext context) => const GetinTouch(),
  "/about": (BuildContext context) => const About(),
  "/privacypolicy": (BuildContext context) => const PrivacyPolicy(),
  "/cookiepolicy": (BuildContext context) => const CookiePolicy(),
  "/apptermsofuse": (BuildContext context) => const appTermsOfUse(),
  "/officialf1raceguideapptermsandconditions": (BuildContext context) =>
      const OfficialF1RaceGuideAppTermsandConditions(),
  /*"/frequentlyaskedquestions": (BuildContext context) =>
      const FrequentlyAskedQuestion(),*/
  // "/sürücüler": (BuildContext context) => const Yariscilar(),
  //"/video": (BuildContext context) => const Video(),

  "/video": (BuildContext context) => const HomeScreen(),

  "/takimlar": (BuildContext context) => const Takimlar(),
  "/suruculer": (BuildContext context) => const Suruculer(),
  "/pistler": (BuildContext context) => const Pistler(),
  //takimlar
  "/ferrari": (BuildContext context) => const Ferrari(),
  "/mercedes": (BuildContext context) => const Mercedes(),
  "/redbull": (BuildContext context) => const RedBull(),
  "/alphine": (BuildContext context) => const Alphine(),
  "/haas": (BuildContext context) => const Haas(),
  "/alfaromeo": (BuildContext context) => const AlfaRomeo(),
  "/alphatauri": (BuildContext context) => const AlphaTauri(),
  "/mclaren": (BuildContext context) => const McLaren(),
  "/astonmartin": (BuildContext context) => const AstonMartin(),
  "/williams": (BuildContext context) => const Williams(),
  //sürücüler
  "/charlesLeclerc": (BuildContext context) => const CharlesLeclerc(),
  "/carlosSainz": (BuildContext context) => const CarlosSainz(),
  "/maxVerstappen": (BuildContext context) => const MaxVerstappen(),
  "/georgeRussel": (BuildContext context) => const GeorgeRussel(),
  "/levisHamilton": (BuildContext context) => const LevisHamilton(),
  "/estebanOcon": (BuildContext context) => const EstebanOcon(),
  "/sergioPerez": (BuildContext context) => const SergioPerez(),
  "/kevinMagnussen": (BuildContext context) => const KevinMagnussen(),
  "/valteriBottas": (BuildContext context) => const ValteriBottas(),
  "/landoNorris": (BuildContext context) => const LandoNorris(),
  "/yukiTsunoda": (BuildContext context) => const YukiTsunoda(),
  "/pierreGasly": (BuildContext context) => const PierreGasly(),
  "/fernandoAlonso": (BuildContext context) => const FernandoAlonso(),
  "/zhouGuanyu": (BuildContext context) => const ZhouGuanyu(),
  "/mickSchumacher": (BuildContext context) => const MickSchumacher(),
  "/lanceStroll": (BuildContext context) => const LanceStroll(),
  "/alexanderAlbon": (BuildContext context) => const AlexanderAlbon(),
  "/danielRicciardo": (BuildContext context) => const DanielRicciardo(),
  "/nicholasLatifi": (BuildContext context) => const NicholasLatifi(),
  "/sebastianVettel": (BuildContext context) => const SebastianVettel(),

  //Sign in
  "/giris": (BuildContext context) => const LoginPage(),

  //Olustur
  "/olustur": (BuildContext context) => const CreateanF1(),

  //Bildirim
  "/bildirim": (BuildContext context) => const PushNotifications(),
  //Giriş Başarılı
  "/girişbasarili": (BuildContext context) => const LoginBasarili(),
};
