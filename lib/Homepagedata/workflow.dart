import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mininav.dart';

class Workflow extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ResponsiveWidget(
        desktopScreen: Center(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage('assets/assets/images/backintro.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.bottomCenter,
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
                              const EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 0.0),
                          child: SizedBox(
                            height: 19.0,
                            child: Text('Work-Flow',
                                style: GoogleFonts.robotoMono(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black)),
                          ),
                        ),
                        SizedBox(height: 50.0),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.transparent,
                          child: Stack(
                            children: [
                              Container(
                                height: 250.0,
                                width: 250.0,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: Colors.blueAccent,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 5.0),
                                    Text(
                                      '01.',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18.0),
                                    ),
                                    SizedBox(
                                      height: 25.0,
                                    ),
                                    Icon(Icons.model_training, size: 100.0),
                                    SizedBox(
                                      height: 35.0,
                                    ),
                                    Text(
                                      'Plan',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18.0),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    300.0, 0.0, 50.0, 0.0),
                                child: Container(
                                  height: 250.0,
                                  width: 250.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: Colors.blueAccent,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 5.0),
                                      Text(
                                        '02.',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0),
                                      ),
                                      SizedBox(
                                        height: 25.0,
                                      ),
                                      Icon(Icons.donut_large, size: 90.0),
                                      SizedBox(
                                        height: 35.0,
                                      ),
                                      Text(
                                        'Design',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    600.0, 0.0, 50.0, 0.0),
                                child: Container(
                                  height: 250.0,
                                  width: 250.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: Colors.blueAccent,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 5.0),
                                      Text(
                                        '03.',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0),
                                      ),
                                      SizedBox(
                                        height: 25.0,
                                      ),
                                      Icon(Icons.code, size: 110.0),
                                      SizedBox(
                                        height: 35.0,
                                      ),
                                      Text(
                                        'Code',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
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
              image: DecorationImage(
                image: NetworkImage('assets/assets/images/backintro.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.bottomCenter,
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
                              const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                          child: SizedBox(
                            height: 19.0,
                            child: Text('Work-Flow',
                                style: GoogleFonts.robotoMono(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black)),
                          ),
                        ),
                        SizedBox(height: 50.0),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 125.0,
                                    width: 125.0,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                        color: Colors.blueAccent,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 5.0),
                                        Text(
                                          '01.',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Icon(Icons.model_training, size: 50.0),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text(
                                          'Plan',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        140.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      height: 125.0,
                                      width: 125.0,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                          color: Colors.blueAccent,
                                          width: 2.0,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 5.0),
                                          Text(
                                            '02.',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15.0),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Icon(Icons.donut_large, size: 50.0),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Text(
                                            'Design',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15.0),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.0,),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  height: 125.0,
                                  width: 125.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: Colors.blueAccent,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 5.0),
                                      Text(
                                        '03.',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.0),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Icon(Icons.code, size: 50.0),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'Code',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.0),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
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
      );
}
