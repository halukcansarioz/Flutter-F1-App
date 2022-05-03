import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class appTermsOfUse extends StatefulWidget {
  const appTermsOfUse({Key? key}) : super(key: key);

  @override
  State<appTermsOfUse> createState() => _appTermsOfUseState();
}

class _appTermsOfUseState extends State<appTermsOfUse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xfff80000),
        title: const Text(
          "App Terms of Use",
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
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "F1® APPS – TERMS OF USE",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """

Curabitur eu cras nam ultricies auctor, molestie augue vitae pretium natoque, nec est in primis. Aliquet dictum fames donec dictumst enim metus, lacus posuere dis congue rutrum, a integer ligula fringilla tempor. Dignissim tempus consequat libero taciti vel montes adipiscing, rhoncus ullamcorper platea dui dolor duis vivamus, suspendisse tristique sodales posuere semper magna. Aliquam dapibus facilisis integer eleifend phasellus lectus taciti sociosqu mauris condimentum etiam, facilisi sapien commodo ad curabitur venenatis aenean penatibus imperdiet.

Adipiscing ridiculus etiam mus dis aptent cursus fusce primis mollis, at nec placerat morbi pretium ut mi elementum. Id ante eleifend gravida congue primis himenaeos per, amet tortor leo eget sociis venenatis parturient ridiculus, nulla consequat ipsum nec diam pharetra. Enim accumsan tincidunt arcu pharetra montes placerat netus varius feugiat elit, auctor volutpat phasellus commodo ornare mauris habitant euismod. Magna conubia phasellus montes volutpat curae curabitur lectus netus aliquam sollicitudin laoreet sem, etiam lobortis aenean pretium purus parturient at sed commodo accumsan ipsum. Class condimentum natoque accumsan phasellus nunc commodo dapibus pulvinar feugiat, volutpat laoreet habitasse orci tortor purus mi nostra, vel eros urna ridiculus cum dignissim montes hac. Ornare parturient malesuada gravida varius integer magnis orci senectus vehicula, tellus facilisis mattis auctor ultricies sociis vivamus montes adipiscing commodo, nec litora lorem dis per nam euismod posuere.

Augue senectus accumsan varius faucibus malesuada diam pulvinar litora, aptent vehicula dolor cubilia torquent ridiculus convallis hendrerit, fusce nulla quis purus nostra euismod vitae. Ullamcorper fringilla curabitur nostra tempor nisl tincidunt aptent, nisi nulla penatibus morbi mus proin, luctus placerat nam risus porta himenaeos. Eget feugiat libero consequat venenatis mattis convallis mauris aenean, arcu penatibus hac integer a est accumsan hendrerit, sagittis sem luctus pretium vivamus congue dignissim.


""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/F1_70_Logo_retraced.svg/2560px-F1_70_Logo_retraced.svg.png"),
          ],
        ),
      ),
    );
  }
}
