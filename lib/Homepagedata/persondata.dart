import 'dart:ui';
import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'mininav.dart';

class Mydata extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ResponsiveWidget(
          desktopScreen: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            // image: DecorationImage(
            //   colorFilter: color(Colors.white,),
            //   // image: NetworkImage(
            //   //         'assets/assets/images/backintro.jpg'),
            //   fit: BoxFit.cover,
            // ),
          ),
          //alignment: Alignment.center,
          // color: Colors.white54,
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(190.0, 0.0, 0.0, 0.0),
                        child: SizedBox(
                          height: 19.0,
                          child: Text('About me',
                              style: GoogleFonts.robotoMono(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black)),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          color: Colors.transparent,
                          child: Stack(
                            children: [
                              Card(
                                color: Colors.transparent,
                                child: Image.network(
                                    'assets/assets/images/instadp.jpg',
                                    height: 400.0,
                                    width: 400.0),
                                //color: Colors.white,

                                // shadowColor: Colors.white70,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    450.0, 100.0, 0.0, 0.0),
                                child: Container(
                                    // decoration:
                                    //     BoxDecoration(//image: Image('backintro.jpg')
                                    //     ),
                                    //height: 150.0,
                                    color: Colors.transparent,
                                    child: Column(
                                      children: [
                                        Text(
                                          "I'm a python and mobile app developer.i love competitive and problem solving. I’m currently pursuing my btech degree from CSPIT,Changa and actively looking for internships in the field of python,ml,dl,mobile app development.",
                                          style: GoogleFonts.robotoMono(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          '\nI am a huge fan of machine learning. I love to study machine learning and do projects in that field.and I believe in the future most of the real life things will work on machine learning and artificial intelligence. Also learning some stuff regarding data science and react js.',
                                          style: GoogleFonts.robotoMono(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(height: 25.0),
                                        AnimatedButton(
                                          onPressed: () => _launchURL(),
                                          shadowDegree: ShadowDegree.dark,
                                          color: Colors.greenAccent,
                                          duration: 90,
                                          height: 50,
                                          width: 150,
                                          child: Text(
                                            'Resume',
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      mobileScreen: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            // image: DecorationImage(
            //   colorFilter: color(Colors.white,),
            //   // image: NetworkImage(
            //   //         'assets/assets/images/backintro.jpg'),
            //   fit: BoxFit.cover,
            // ),
          ),
          //alignment: Alignment.center,
          // color: Colors.white54,
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                        child: SizedBox(
                          height: 19.0,
                          child: Text('About me',
                              style: GoogleFonts.robotoMono(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black)),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          color: Colors.transparent,
                          child:Column(
                            children: [
                              Card(
                                color: Colors.white,
                                child: CircleAvatar(
                                                            radius: 50.0,
                                                                  backgroundImage: NetworkImage(
                                      'assets/assets/images/instadp.jpg',
                                     scale: 200.0),
                                ),
                                //color: Colors.white,

                                // shadowColor: Colors.white70,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  0.0, 10.0, 0.0, 0.0),
                                child: Container(
                                    // decoration:
                                    //     BoxDecoration(//image: Image('backintro.jpg')
                                    //     ),
                                    //height: 150.0,
                                    color: Colors.transparent,
                                    child: Column(
                                      children: [
                                        Text(
                                          "I'm a python and mobile app developer.i love competitive and problem solving. I’m currently pursuing my btech degree from CSPIT,Changa and actively looking for internships in the field of python,ml,dl,mobile app development.",
                                          style: GoogleFonts.robotoMono(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          '\nI am a huge fan of machine learning. I love to study machine learning and do projects in that field.and I believe in the future most of the real life things will work on machine learning and artificial intelligence. Also learning some stuff regarding data science and react js.',
                                          style: GoogleFonts.robotoMono(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(height: 25.0),
                                        AnimatedButton(
                                          onPressed: () => _launchURL(),
                                          shadowDegree: ShadowDegree.dark,
                                          color: Colors.greenAccent,
                                          duration: 90,
                                          height: 50,
                                          width: 150,
                                          child: Text(
                                            'Resume',
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),);
}

_launchURL() async {
  const url =
      'https://docs.google.com/uc?export=download&id=1Knl6jASQXP-SfhRj4udYEtc7PQS8U6if';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
