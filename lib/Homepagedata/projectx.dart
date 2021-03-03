import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'mininav.dart';

class Projectx extends StatefulWidget {
  @override
  _ProjectxState createState() => _ProjectxState();
}

class _ProjectxState extends State<Projectx> {
  final list = [
    "Automatic Attandence System Using Face recognition",
    "Charusat Orientation Application",
    "Classification and detection of covid-19 and other diseas",
    "TheInfoOne",
    "QuoteY",
    "Flutter-Ml",
  ];
  final text = [
    "This project is based on the motive to automate the attendance system, In this project the person can add their own biometric data using camera and train that data and after the data is trained it's ready to recognise and put the ends in the Excel sheet",
    "Cross platform flutter application which showscasing various information of the college and other utilities like live news of university, information of faculty, parts of University in map, internal results, time table of department, to-do data, and etc",
    "Main objective of this project is to improve quality of medical data reduced fluctuations in patient rates and save in the medical cost with the present study we evaluated the studies associated with that diagnosis of Covid-19 and other disease",
    "This web application which is showcasing the different type of information of Indian army, battles of Indian army, link to join Indian army, live news fetched from api, different facts of Indian army, small intro of developer and contact us page",
    "Using this application people can share the Quotes on regular basis also they can see different type of thoughts which people and author has shared.other functionalities like trending quotes of today and get random quote also we can share and copy these quotes",
    "With this application user just capture or load image from gallery and convert text data of image into text of string and share or copy that data also the user can share and copy data by speaking into application",
  ];
  final skills = [
    "Python, OpenCv, ML, Excel",
    "Flutter, Dart, Firebase",
    "Deep-learning, Transfer-learning, Python, Flask, css, js",
    "Flutter-Web, API, SQL",
    "Flutter, API, SQL, Firebase",
    "Flutter, ML, Firebase"
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) => ResponsiveWidget(
          desktopScreen: Container(
        width: 400.0,
        color: Colors.white,
        child: Swiper(
          containerHeight: 600.0,
          containerWidth: 600.0,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(120.0, 40.0, 120.0, 0.0),
                child: Container(
                  child: Column(children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text(
                          list[index],
                          style: GoogleFonts.robotoSlab(
                              fontSize: 17.0, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 1.0,
                        width: 50.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 0),
                    Container(
                      width: 600.0,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(80.0, 65.0, 80.0, 0.0),
                        child: Text(
                          text[index],
                          style: GoogleFonts.robotoMono(
                              fontSize: 17.0, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Container(
                      width: 600.0,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(80.0, 40.0, 80.0, 0.0),
                        child: Text(
                          'Technologies: ' + skills[index],
                          style: GoogleFonts.robotoMono(
                              fontSize: 17.0, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(00, 80.0, 0.0, 10.0),
                      child: AnimatedButton(
                        onPressed: () => _launchURL(index),
                        shadowDegree: ShadowDegree.dark,
                        color: Colors.black45,
                        duration: 90,
                        height: 50,
                        width: 150,
                        child: Text(
                          'Goto Project',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            );
          },
          itemCount: 6,
          itemHeight: 400.0,
          itemWidth: 400.0,
          pagination: new SwiperPagination(),
          control: new SwiperControl(),
        ),
      ),
      mobileScreen: Container(
        width: 400.0,
        color: Colors.white,
        child: Swiper(
          containerHeight: 600.0,
          containerWidth: 600.0,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                child: Container(
                  child: Column(children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: new Text(
                          list[index],
                          style: GoogleFonts.robotoSlab(
                              fontSize: 15.0, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 1.0,
                        width: 50.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 0),
                    Padding(
                      padding:
                          const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
                      child: Text(
                        text[index],
                        style: GoogleFonts.robotoMono(
                            fontSize: 15.0, fontWeight: FontWeight.w700),
                      ),
                    ),
                    
                       Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 10.0),
                        child: Text(
                          'Technologies: ' + skills[index],
                          style: GoogleFonts.robotoMono(
                              fontSize: 15.0, fontWeight: FontWeight.w700),
                        ),
                      ),
                    
                    Padding(
                      padding: const EdgeInsets.fromLTRB(00, 30.0, 0.0, 10.0),
                      child: AnimatedButton(
                        onPressed: () => _launchURL(index),
                        shadowDegree: ShadowDegree.dark,
                        color: Colors.black45,
                        duration: 90,
                        height: 50,
                        width: 150,
                        child: Text(
                          'Goto Project',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            );
          },
          itemCount: 6,
          itemHeight: 400.0,
          itemWidth: 400.0,
          pagination: new SwiperPagination(),
          
        ),
      ),
      );
}

_launchURL(int index) async {
  const url = 'https://www.instagram.com';
  const url1 = 'https://www.google.com';
  const url2 = 'https://www.youtube.com';
  if (index == 0) {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } else if (index == 1) {
    if (await canLaunch(url1)) {
      await launch(url1);
    } else {
      throw 'Could not launch $url1';
    }
  } else {
    if (await canLaunch(url2)) {
      await launch(url2);
    } else {
      throw 'Could not launch $url2';
    }
  }
}
