import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Iletisim extends StatefulWidget {
  const Iletisim({Key? key}) : super(key: key);

  @override
  State<Iletisim> createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {
  final Completer<GoogleMapController> _haritaHazirlayici = Completer();

  final Map<MarkerId, Marker> _isaretler = <MarkerId, Marker>{};

  Future _linkeGit(String link) async {
    if (await canLaunch(link)) {
      await canLaunch(link);
    } else {
      debugPrint("Gönderdiğiniz linki açamıyorum");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff80000),
        centerTitle: true,
        title: const Text(
          'Contact',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: "Merriweather-Italic",
              fontStyle: FontStyle.italic),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // ignore: sized_box_for_whitespace
          Container(
            height: 200.0,
            width: double.maxFinite,
            child: GoogleMap(
              mapType: MapType.normal,
              markers: Set<Marker>.of(_isaretler.values),
              initialCameraPosition: const CameraPosition(
                  target: LatLng(39.7818614, 32.8199154), zoom: 16.0),
              onMapCreated: (GoogleMapController controller) {
                const MarkerId isaretId = MarkerId('merkez');
                Marker isaret = Marker(
                  markerId: isaretId,
                  position: const LatLng(39.7818366, 32.8198832),
                  infoWindow: InfoWindow(
                    title: 'Ankara University ',
                    snippet: 'Computer Engineering',
                    onTap: () {
                      debugPrint('İşaretleyici tıklandı');
                    },
                  ),
                );
                setState(() {});
                _haritaHazirlayici.complete(controller);
                _isaretler[isaretId] = isaret;
              },
            ),
          ),
          const SizedBox(
            height: 100,
            child: Center(
              child: Icon(
                FontAwesomeIcons.house,
                color: Color(0xfff80000),
                size: 50,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 1.0, 1.0),
            child: Text(
              "Bahçelievler, I Blok, Ankara Ünv. 50. Yıl Kampüsü, 06830 Gölbaşı/Ankara",
              style: TextStyle(
                fontFamily: "Merriweather-Italic",
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 100,
            child: Center(
              child: InkWell(
                onTap: () {
                  _linkeGit("tel:903122127464");
                },
                child: const Icon(
                  FontAwesomeIcons.phone,
                  color: Color(0xfff80000),
                  size: 50,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 1.0, 1.0),
            child: Text(
              "90 312 212 74 64",
              style: TextStyle(
                fontFamily: "Merriweather-Italic",
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 100,
            child: Center(
              child: InkWell(
                onTap: () => _linkeGit("mailto:compeng@eng.ankara.edu.tr"),
                child: const Icon(
                  Icons.email,
                  color: Color(0xfff80000),
                  size: 60,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(1.0, 0.0, 0.0, 1.0),
            child: Text(
              "compeng@eng.ankara.edu.tr",
              style: TextStyle(
                fontFamily: "Merriweather-Italic",
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
/*
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Iletisim extends StatefulWidget {
  const Iletisim({Key? key}) : super(key: key);

  @override
  _Iletisim createState() => _Iletisim();
}

class _Iletisim extends State<Iletisim> {
  static const _initialCameraPosition =
      CameraPosition(target: LatLng(39.7818366, 32.8198832), zoom: 17.0);
  GoogleMapController? _googleMapController;
  BitmapDescriptor? customMarker;
  List<Marker> allMarkers = [];
  getCustomMarker() async {
    customMarker = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration.empty, 'assets/icon.png');
  }

  @override
  void initState() {
    super.initState();
    Geolocator.requestPermission();
    getCustomMarker();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 250, 17, 0),
        title: const Text(
          "Contact",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: "Merriweather-Italic",
              fontStyle: FontStyle.italic),
        ),
      ),
      body: GoogleMap(
          markers: Set.from(allMarkers),
          myLocationButtonEnabled: false,
          zoomControlsEnabled: false,
          initialCameraPosition: _initialCameraPosition,
          onMapCreated: (GoogleMapController control) {
            setState(() {
              allMarkers.add(Marker(
                  icon: customMarker!,
                  markerId: const MarkerId('myMarker'),
                  draggable: false,
                  onTap: () {
                    print('Marker Tapped');
                  },
                  position: const LatLng(41.015137, 28.979530)));
            });
          }),
    );
  }
}
*/