import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CookiePolicy extends StatefulWidget {
  const CookiePolicy({Key? key}) : super(key: key);

  @override
  State<CookiePolicy> createState() => _CookiePolicyState();
}

class _CookiePolicyState extends State<CookiePolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xfff80000),
          title: const Text(
            "Cookie Policy",
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
                "https://www.dijitalajanslar.com/wp-content/uploads/2017/11/formula-1-2018-logo.png"),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """

Cookies Policy""",
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

Last Updated: 10 July 2020

This website, F1Experiences.com (the "Site"), is operated by QuintEvents LLC ("we", "us", "our", and "F1 Experiences").
            """,
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """ 
What are cookies?
              """,
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
A cookie is a simple text file that is stored on your computer or mobile device by a website’s server. Each cookie is unique to your web browser. It will contain some anonymous information such as a unique identifier and the site name and some digits and numbers. It allows a website to remember things like who you are, your preferences or what’s in your shopping basket.

Most websites you visit will use cookies in order to improve your user experience by enabling that website to ‘remember’ you. To learn more about cookies, visit All About Cookies.

""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """
How long do cookies last?
            """,
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
Cookies last for different lengths of time depending on what they are used for:

Session cookies are temporary cookies and are only stored until you leave the website or when you close your web browser.

Persistent cookies last for a fixed period of time, defined within the cookie, and allow the website to recognize the device again when the user returns to that website on that device.

""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """Who sets cookies?
              """,
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
First party cookies are set by the website that you are visiting and can only be read by that website.

Third party cookies are set by an organization other than operator of the website. This might be for the purposes of website measurement, to allow a third-party service on the website to operate or to target or deliver advertising.

""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """How do we use cookies?
            """,
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
The Site uses a range of first and third party cookies that enable us to offer an enhanced, personalized experience. The information stored in cookies falls into the following categories:

""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """ Necessary Cookies
              """,
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
These cookies are essential in order to enable you to use the Site and its features. Without these cookies, we are unable to provide services that you have asked for, such as purchasing F1 Experiences ticket package and travel packages.

""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """Performance Cookies
            """,
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
These cookies collect information about how visitors use the Site, for instance which pages visitors go to most often and if they get error messages. All information that these cookies collect is aggregated and therefore anonymous, and is only used to improve how the Site works.

""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """Functionality Cookies
            """,
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
These cookies allow the Site to remember choices you make (such as your user name and preferred settings). This would allow us to provide you with local weather reports, remember changes you have made to text size or provide services you have asked for. The information these cookies collect may be anonymized and cannot track your browsing activity on other websites.

""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """Targeting or Advertising Cookies
            """,
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
These cookies are used to deliver adverts more relevant to you and your interests, to limit the number of times you see an advertisement and to help measure the effectiveness of the advertising campaigns. They are usually placed by advertising networks with the website operator’s permission. They remember that you have visited a website and this information is shared with other organizations such as advertisers.

To manage cookies linked to targeting or advertising activities, visit Your Online Choices.

To opt out of being tracked by Google Analytics across all websites visit Google Analytics Opt Out.

""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """Cookies and Tracking Technologies Used on F1 Experiences' Site
                """,
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
Party: Google Analytics
Service: Google Analytics for distinguishing users
__utma
__ga
__gid
Use of Tracking Technologies: Yes
Privacy Choices: See information links above. To opt- out install the plug-in: http://tools.google.com/dlpage/gaoptout?hl=en.
If Google does not provide any plug-in for your browser, click here. A no-tracking cookie is then set.
Further information under http://www.google.com/intl/en/privacypolicy.html

Party: Pardot
Service: Analytics Platform
Use of Tracking Technologies: Yes
More Information / Privacy Choices: https://www.salesforce.com/company/privacy/

Party: Zopim
Service: Live Chat
Use of Tracking Technologies: Yes
More Information / Privacy Choices: https://www.zopim.com/privacy.html

Party: Stripe
Service: Payment Platform
Use of Tracking Technologies: Yes
More Information / Privacy Choices: https://stripe.com/us/privacy

Party: HotJar
Service: Analytics Platform
Use of Tracking Technologies: Yes
More Information: https://www.hotjar.com/legal/policies/privacy
Privacy Choices: https://www.hotjar.com/legal/compliance/opt-out

Party: Lead Forensics
Service: Analytics Platform
Use of Tracking Technologies: Yes
More Information / Privacy Choices: https://www.leadforensics.com/privacy-policy/

Party: Comscore
Service: Analytics Platform
Use of Tracking Technologies: Yes
More Information / Privacy Choices: https://www.comscore.com/About/Privacy-Policy

Party: QuintEvents
Service: Analytics
Use of Tracking Technologies: Yes
More Information / Privacy Choices: https://quintevents.com/privacy-policy

""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """ How to control cookies
            """,
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
You can delete all cookies that are already on your device and prevent them from being placed. If you do this, however, you may have to manually adjust some preferences every time you visit a website and some services and functionalities may not work.

All major browsers allow you to change your cookie settings - for example you can set up your web browser to inform you when you receive a cookie, giving you the chance to decide whether or not to accept it. You can usually find these settings in the 'options' or 'preferences' menu of your browser. To understand these settings, the following links may be helpful, or you can use the 'Help' option in your browser for further assistance.

""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """Cookie settings in Internet Explorer and Edge
Cookie settings in Firefox
Cookie settings in Chrome
Cookie settings in Safari web and iOS.""",
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

Changes To Our Cookies Policy""",
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
When we make any changes we may make to our Cookies Policy in the future, we will update the "Last Updated" date will be posted on at the top of this page and, as necessary, notify you by e-mail. Please check back frequently to see any updates or changes to our Cookies Policy. If the modified terms are not acceptable to you, your only recourse is to stop using the Site or communicating with us through any other channel. By continuing to use the Site or communicating with us through another channel after we have posted an updated version of the Cookies Policy or otherwise notified you of an update, you are affirming that you agree to be bound by the amended terms.""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                """

Cookies Statement""",
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
We use cookies to personalize content, analyze our traffic and to capture information provided by our visitors to contact them about our events and services. You consent to our cookies if you continue to use this website.
""",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Merriweather-Italic",
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/F1_70_Logo_retraced.svg/2560px-F1_70_Logo_retraced.svg.png"),
          ],
        ))

        /*SingleChildScrollView(
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
                              "strong": Style(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Merriweather-Italic",
                                  fontStyle: FontStyle.italic),
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
                                  fontWeight: FontWeight.w600,
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
      ),*/
        );
  }
}
