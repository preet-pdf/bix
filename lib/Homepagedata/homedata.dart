import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mininav.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_display/delayed_display.dart';

class Homedata extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ResponsiveWidget(
        desktopScreen: SingleChildScrollView(
          child: Container(
            color: Colors.white54,
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: Container(
                  alignment: Alignment.center,
                  child: Image.network(
                    'assets/assets/images/frontintro.jpg',
                    height: 700.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ClipRRect(
                  child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.grey.withOpacity(0.08),
                        child: SizedBox(
                          height: 700.0,
                          child: Container(
                              alignment: Alignment.center,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TypewriterAnimatedTextKit(
                                      speed: Duration(milliseconds: 125),
                                      totalRepeatCount: 1,
                                      text: ["Hello World...I'm\nPreet Parikh"],
                                      textStyle: GoogleFonts.rubik(
                                          fontSize: 28.0,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                      pause: Duration(
                                          milliseconds: 100000000000000000),
                                      displayFullTextOnTap: true,
                                      stopPauseOnTap: true,
                                    ),
                                    SizedBox(height: 50.0),
                                    DelayedDisplay(
                                      delay: Duration(seconds: 4),
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),
                                                  Stack(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                20.0,
                                                                0.0,
                                                                0.0,
                                                                10.0),
                                                        child: Container(
                                                          width: 100.0,
                                                          height: 50.0,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .all(Radius
                                                                          .circular(
                                                                              5)),
                                                              color:
                                                                  Colors.white),
                                                          child: Center(
                                                            child: Text(
                                                              'Python',
                                                              style: GoogleFonts
                                                                  .robotoMono(
                                                                      fontSize:
                                                                          17.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                140.0,
                                                                0.0,
                                                                0.0,
                                                                50.0),
                                                        child: Container(
                                                          width: 100.0,
                                                          height: 50.0,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .all(Radius
                                                                          .circular(
                                                                              5)),
                                                              color:
                                                                  Colors.white),
                                                          child: Center(
                                                              child: Text(
                                                                  'Flutter',
                                                                  style: GoogleFonts.robotoMono(
                                                                      fontSize:
                                                                          17.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700))),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                260.0,
                                                                0.0,
                                                                0.0,
                                                                50.0),
                                                        child: Container(
                                                          width: 100.0,
                                                          height: 50.0,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .all(Radius
                                                                          .circular(
                                                                              5)),
                                                              color:
                                                                  Colors.white),
                                                          child: Center(
                                                              child: Text('Php',
                                                                  style: GoogleFonts.robotoMono(
                                                                      fontSize:
                                                                          17.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700))),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                380.0,
                                                                0.0,
                                                                0.0,
                                                                50.0),
                                                        child: Container(
                                                          width: 100.0,
                                                          height: 50.0,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .all(Radius
                                                                          .circular(
                                                                              5)),
                                                              color:
                                                                  Colors.white),
                                                          child: Center(
                                                              child: Text(
                                                                  'Firebase',
                                                                  style: GoogleFonts.robotoMono(
                                                                      fontSize:
                                                                          17.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700))),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                500.0,
                                                                0.0,
                                                                0.0,
                                                                50.0),
                                                        child: Container(
                                                          width: 100.0,
                                                          height: 50.0,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .all(Radius
                                                                          .circular(
                                                                              5)),
                                                              color:
                                                                  Colors.white),
                                                          child: Center(
                                                              child: Text(
                                                                  'ML&DL',
                                                                  style: GoogleFonts.robotoMono(
                                                                      fontSize:
                                                                          17.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700))),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                620.0,
                                                                0.0,
                                                                0.0,
                                                                50.0),
                                                        child: Container(
                                                          width: 100.0,
                                                          height: 50.0,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .all(Radius
                                                                          .circular(
                                                                              5)),
                                                              color:
                                                                  Colors.white),
                                                          child: Center(
                                                              child: Text(
                                                                  'Dart',
                                                                  style: GoogleFonts.robotoMono(
                                                                      fontSize:
                                                                          17.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700))),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                740.0,
                                                                0.0,
                                                                0.0,
                                                                0.0),
                                                        child: Container(
                                                            width: 100.0,
                                                            height: 50.0,
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            5)),
                                                                color: Colors
                                                                    .white),
                                                            child: Center(
                                                                child: Text(
                                                                    'Git',
                                                                    style: GoogleFonts.robotoMono(
                                                                        fontSize:
                                                                            17.0,
                                                                        fontWeight:
                                                                            FontWeight.w700)))),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ))),
            ]),
          ),
        ),
        //Stack(children: [
        //   Center(
        //     child: Container(
        //         child: Row(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.fromLTRB(80.0, 20.0, 0.0, 0.0),
        //           child: Container(
        //             width: 800.0,
        //             child: Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Column(children: [
        //                 TypewriterAnimatedTextKit(
        //                   speed: Duration(milliseconds: 150),
        //                   totalRepeatCount: 1,
        //                   text: ["Hello World....."],
        //                   textStyle: TextStyle(
        //                       fontSize: 32.0,
        //                       fontWeight: FontWeight.bold,
        //                       color: Colors.white30),
        //                   pause: Duration(milliseconds: 100000000000000000),
        //                   displayFullTextOnTap: true,
        //                   stopPauseOnTap: true,
        //                 ),
        //                 TypewriterAnimatedTextKit(
        //                   speed: Duration(milliseconds: 150),
        //                   totalRepeatCount: 1,
        //                   text: ["My Name is Preet Parikh....."],
        //                   textStyle: TextStyle(
        //                       fontSize: 32.0,
        //                       fontWeight: FontWeight.bold,
        //                       color: Colors.white30),
        //                   pause: Duration(milliseconds: 100000000000000000),
        //                   displayFullTextOnTap: true,
        //                   stopPauseOnTap: true,
        //                 ),
        //               ]),
        //             ),
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(20.0),
        //           child: SizedBox(
        //             width: 400.0,
        //             child: Container(
        //               alignment: Alignment.centerRight,
        //               child: Column(children: [
        //                 CircleAvatar(
        //                     radius: 100,
        //                     backgroundImage: AssetImage('instadp.jpg'))
        //               ]),
        //             ),
        //           ),
        //         ),
        //       ],
        //     )),
        //   ),
        // ]),
        tabletScreen: Stack(children: [
          Center(
            child: Container(
                child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Container(
                    width: 400.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        TypewriterAnimatedTextKit(
                          speed: Duration(milliseconds: 150),
                          totalRepeatCount: 1,
                          text: ["123Hello World..."],
                          textStyle: TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white30),
                          pause: Duration(milliseconds: 100000000000000000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        ),
                        TypewriterAnimatedTextKit(
                          speed: Duration(milliseconds: 150),
                          totalRepeatCount: 1,
                          text: ["My Name is Preet Parikh..."],
                          textStyle: TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white30),
                          pause: Duration(milliseconds: 100000000000000000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        )
                      ]),
                    ),
                  ),
                ),
                SizedBox(
                  width: 200.0,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(children: [
                      CircleAvatar(
                          radius: 100,
                          backgroundImage: AssetImage(
                              'instadp.jpg') // NetworkImage('https://via.placeholder.com/140x100')
                          )
                    ]),
                  ),
                ),
              ],
            )),
          ),
        ]),
        mobileScreen: SingleChildScrollView(
          child: Container(
            color: Colors.white54,
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: Container(
                  alignment: Alignment.center,
                  child: Image.network(
                    'assets/assets/images/frontintro.jpg',
                    height: 500.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ClipRRect(
                  child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.grey.withOpacity(0.08),
                        child: SizedBox(
                          height: 500.0,
                          child: Container(
                              alignment: Alignment.center,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TypewriterAnimatedTextKit(
                                      speed: Duration(milliseconds: 125),
                                      totalRepeatCount: 1,
                                      text: ["Hello World...I'm\nPreet Parikh"],
                                      textStyle: GoogleFonts.rubik(
                                          fontSize: 28.0,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                      pause: Duration(
                                          milliseconds: 100000000000000000),
                                      displayFullTextOnTap: true,
                                      stopPauseOnTap: true,
                                    ),
                                    SizedBox(height: 50.0),
                                    DelayedDisplay(
                                      delay: Duration(seconds: 4),
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),
                                                  Stack(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                                        child: Column(children: [
                                                          Row(
                                                          children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  50.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                          child: Container(
                                                            width: 70.0,
                                                            height: 40.0,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .all(Radius
                                                                            .circular(
                                                                                5)),
                                                                color:
                                                                    Colors.white),
                                                            child: Center(
                                                              child: Text(
                                                                'Python',
                                                                style: GoogleFonts
                                                                    .robotoMono(
                                                                        fontSize:
                                                                           15.0,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  15.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                          child: Container(
                                                            width: 70.0,
                                                            height: 40.0,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .all(Radius
                                                                            .circular(
                                                                                5)),
                                                                color:
                                                                    Colors.white),
                                                            child: Center(
                                                                child: Text(
                                                                    'Flutter',
                                                                    style: GoogleFonts.robotoMono(
                                                                        fontSize:
                                                                            15.0,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700))),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  15.0,
                                                                  0.0,
                                                                  0.0,
                                                                 0.0),
                                                          child: Container(
                                                           width: 70.0,
                                                            height: 40.0,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .all(Radius
                                                                            .circular(
                                                                                5)),
                                                                color:
                                                                    Colors.white),
                                                            child: Center(
                                                                child: Text('Php',
                                                                    style: GoogleFonts.robotoMono(
                                                                        fontSize:
                                                                             15.0,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700))),
                                                          ),
                                                        ),]),
                                                        SizedBox(height: 10.0,),
                                                        Row(
                                                          children: [
                                                            
                                                            Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  50.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                          child: Container(
                                                            width: 70.0,
                                                            height: 40.0,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .all(Radius
                                                                            .circular(
                                                                                5)),
                                                                color:
                                                                    Colors.white),
                                                            child: Center(
                                                              child: Text(
                                                                'ML&DL',
                                                                style: GoogleFonts
                                                                    .robotoMono(
                                                                        fontSize:
                                                                            15.0,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  15.0,
                                                                  0.0,
                                                                  0.0,
                                                                0.0),
                                                          child: Container(
                                                            width: 70.0,
                                                            height: 40.0,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .all(Radius
                                                                            .circular(
                                                                                5)),
                                                                color:
                                                                    Colors.white),
                                                            child: Center(
                                                                child: Text(
                                                                    'Dart',
                                                                    style: GoogleFonts.robotoMono(
                                                                        fontSize:
                                                                            15.0,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700))),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  15.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                          child: Container(
                                                           width: 70.0,
                                                            height: 40.0,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .all(Radius
                                                                            .circular(
                                                                                5)),
                                                                color:
                                                                    Colors.white),
                                                            child: Center(
                                                                child: Text('Git',
                                                                    style: GoogleFonts.robotoMono(
                                                                        fontSize:
                                                                            15.0,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700))),
                                                          ),
                                                        ),
                                                            
                                                          ],
                                                        )],),
                                                      )],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ))),
            ]),
          ),
        ),
      );
}
