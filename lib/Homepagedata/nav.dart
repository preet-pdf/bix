import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'mininav.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        print(constraints.maxWidth);
        return Desktopview();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return Desktopview();
      } else {
        return Mobileview();
      }
    });
  }
}

class Desktopview extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ResponsiveWidget(
        desktopScreen: Container(
          child: Container(
            height: 90.0,
            color: Colors.black87,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                      child: Container(
                        child: Text('Portfolio',
                            style: GoogleFonts.robotoMono(
                                fontSize: 17.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white)),
                      ),
                    ),

                    // SizedBox(
                    //   width: 900,
                    // ),
                    Padding(
                      padding:
                          const EdgeInsets.fromLTRB(1000.0, 0.0, 10.0, 0.0),
                      child: Container(
                          child: Row(children: [
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              side: BorderSide(color: Colors.cyan)),
                          color: Colors.transparent,
                          onPressed: _launchMaps,
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    'assets/assets/images/lin.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "Linked In",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              side: BorderSide(color: Colors.cyan)),
                          color: Colors.transparent,
                          onPressed: _launchMaps1,
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    'assets/assets/images/Octocat.jpg',
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "Github",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              side: BorderSide(color: Colors.cyan)),
                          color: Colors.transparent,
                          onPressed: _launchMaps2,
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    'assets/assets/images/twi.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "Twitter",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              side: BorderSide(color: Colors.cyan)),
                          color: Colors.transparent,
                          onPressed: _launchMaps3,
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    "assets/assets/images/ins.png",
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "Instagram",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ])),
                    )
                  ]),
                ],
              ),
            ),
          ),
        ),
        tabletScreen: Container(
          child: Container(
            height: 150.0,
            color: Colors.white24,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Portfolio',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 600,
                  ),
                  Text(
                    'About me',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Projects',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Achivements',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Contact me',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
        mobileScreen: Container(
          child: Container(
            height: 150.0,
            color: Colors.black87,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    child: Container(
                      child: Text('Portfolio',
                          style: GoogleFonts.robotoMono(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white)),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(65.0, 0.0, 0.0, 0.0),
                    child: Center(
                      child: Column(
                        
                        children: [
                          Center(
                            child: Container(
                              child: Row(children: [
                                MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      side: BorderSide(color: Colors.cyan)),
                                  color: Colors.transparent,
                                  onPressed: _launchMaps,
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Image.network(
                                            'assets/assets/images/lin.png',
                                            height: 25,
                                            width: 25,
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Text(
                                            "Linked In ",
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 27.0,
                                ),
                                MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      side: BorderSide(color: Colors.cyan)),
                                  color: Colors.transparent,
                                  onPressed: _launchMaps1,
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Image.network(
                                            'assets/assets/images/Octocat.jpg',
                                            height: 25,
                                            width: 25,
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Text(
                                            "Github",
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                              child: Row(children: [
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  side: BorderSide(color: Colors.cyan)),
                              color: Colors.transparent,
                              onPressed: _launchMaps3,
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Image.network(
                                        "assets/assets/images/ins.png",
                                        height: 25,
                                        width: 25,
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        "Instagram",
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  side: BorderSide(color: Colors.cyan)),
                              color: Colors.transparent,
                              onPressed: _launchMaps2,
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Image.network(
                                        'assets/assets/images/twi.png',
                                        height: 25,
                                        width: 25,
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        "Twitter",
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ])),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

_launchMaps() async {
  const url = "https://www.linkedin.com/in/preet-parikh/";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch Maps';
  }
}

_launchMaps1() async {
  const url = "https://github.com/preet-pdf";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch Maps';
  }
}

_launchMaps2() async {
  const url = "https://twitter.com/preetparikh99";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch Maps';
  }
}

_launchMaps3() async {
  const url = "https://www.instagram.com/mr.parikh___/";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch Maps';
  }
}

class Mobileview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 90.0,
        width: MediaQuery.of(context).size.width,
        color: Colors.yellowAccent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Portfolio',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(children: [
                Text(
                  'About me',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Projects',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Achivements',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Contact me',
                  style: TextStyle(color: Colors.white),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
