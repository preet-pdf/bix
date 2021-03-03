import 'dart:convert';

import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:http/http.dart' as http;

import 'mininav.dart';

class Getintouch extends StatefulWidget {
  @override
  _GetintouchState createState() => _GetintouchState();
}

class _GetintouchState extends State<Getintouch> {
  var _scrollController = ScrollController();

  void goUp() {
    _scrollController.animateTo(
      0.0,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOutQuart,
    );
  }

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();

  // Boolean variable for CircularProgressIndicator.
  bool visible = false;
  Future webCall() async {
    try {
      // Showing CircularProgressIndicator using State.
      setState(() {
        visible = true;
      });

      // Getting value from Controller
      String name = nameController.text;
      String email = emailController.text;
      String phoneNumber = phoneNumberController.text;

      // API URL
      var url = 'https://infoxip.000webhostapp.com/new2.php';

      // Store all data with Param Name.
      var data = {'name': name, 'email': email, 'comment': phoneNumber};

      // Starting Web Call with data.
      var response = await http.post(url, body: json.encode(data));

      // Getting Server response into variable.
      var message = jsonDecode(response.body);

      // If Web call Success than Hide the CircularProgressIndicator.
      if (response.statusCode == 200) {
        setState(() {
          visible = false;
        });
      }

      // Showing Alert Dialog with Response JSON.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text(message),
            actions: <Widget>[
              TextButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } catch (exception) {
      visible = false;
      print('hello');
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) => ResponsiveWidget(
        desktopScreen: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
          child: Container(
              color: Colors.white,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Get In Touch',
                      style: GoogleFonts.robotoSlab(
                          fontSize: 17.0, fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      child: Stack(children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 110.0, 0.0, 0.0),
                          child: Container(
                            height: 300.0,
                            width: 350.0,
                            child: Column(children: [
                              Row(children: [
                                Icon(
                                  Icons.mail,
                                  size: 20.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Mail us:',
                                    style: GoogleFonts.robotoMono(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ]),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    26.0, 00, 0.0, 0.0),
                                child: Text(
                                  'preetparikh0@gmail.com',
                                  style: GoogleFonts.robotoMono(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Row(children: [
                                Icon(
                                  Icons.call,
                                  size: 20.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Call us:',
                                    style: GoogleFonts.robotoMono(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ]),
                              Text(
                                '+91 9924013129(IN)',
                                style: GoogleFonts.robotoMono(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w700),
                              ),
                              Row(children: [
                                Icon(
                                  Icons.location_history,
                                  size: 20.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Visit us:',
                                    style: GoogleFonts.robotoMono(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ]),
                              Text(
                                'Vadodra,Gujrat,India',
                                style: GoogleFonts.robotoMono(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w700),
                              )
                            ]),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(370.0, 0.0, 0.0, 0.0),
                          child: Container(
                              height: 450.0,
                              width: 350.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        50.0, 70.0, 0.0, 5.0),
                                    child: Text(
                                      'Have Something To Write?',
                                      style: GoogleFonts.robotoSlab(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                              width: 280,
                                              padding: EdgeInsets.all(10.0),
                                              child: TextField(
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                  controller: nameController,
                                                  autocorrect: true,
                                                  decoration: InputDecoration(
                                                      hintText: 'Name',
                                                      helperStyle: GoogleFonts
                                                          .robotoSlab(
                                                              fontSize: 17.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                      fillColor: Colors.black,
                                                      focusColor:
                                                          Colors.black))),
                                          Container(
                                              width: 280,
                                              padding: EdgeInsets.all(10.0),
                                              child: TextField(
                                                style: TextStyle(
                                                    color: Colors.black),
                                                controller: emailController,
                                                autocorrect: true,
                                                decoration: InputDecoration(
                                                    hintText: 'Email',
                                                    helperStyle:
                                                        GoogleFonts.robotoSlab(
                                                            fontSize: 17.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                    fillColor: Colors.black,
                                                    focusColor: Colors.black),
                                              )),
                                          Container(
                                              width: 280,
                                              padding: EdgeInsets.all(10.0),
                                              child: TextField(
                                                style: TextStyle(
                                                    color: Colors.black),
                                                controller:
                                                    phoneNumberController,
                                                autocorrect: true,
                                                decoration: InputDecoration(
                                                  hintText: 'Message',
                                                  helperStyle:
                                                      GoogleFonts.robotoSlab(
                                                          fontSize: 17.0,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                ),
                                              )),
                                          AnimatedButton(
                                            onPressed: webCall,
                                            height: 50.0,
                                            color: Colors.black45,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text('Send',
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                            ),
                                          ),
                                          Visibility(
                                              visible: visible,
                                              child: Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 30),
                                                  child:
                                                      CircularProgressIndicator())),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ]),
                    ),
                  ],
                ),
              )),
        ),
        mobileScreen: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
          child: Container(
              color: Colors.white,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Get In Touch',
                      style: GoogleFonts.robotoSlab(
                          fontSize: 17.0, fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                      child: Column(children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                          child: Container(
                            child: Column(children: [
                              Row(children: [
                                Icon(
                                  Icons.mail,
                                  size: 20.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Mail us:',
                                    style: GoogleFonts.robotoMono(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ]),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    26.0, 00, 0.0, 0.0),
                                child: Text(
                                  'preetparikh0@gmail.com',
                                  style: GoogleFonts.robotoMono(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Row(children: [
                                Icon(
                                  Icons.call,
                                  size: 20.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Call us:',
                                    style: GoogleFonts.robotoMono(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ]),
                              Text(
                                '+91 9924013129(IN)',
                                style: GoogleFonts.robotoMono(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700),
                              ),
                              Row(children: [
                                Icon(
                                  Icons.location_history,
                                  size: 20.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Visit us:',
                                    style: GoogleFonts.robotoMono(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ]),
                              Text(
                                'Vadodra,Gujrat,India',
                                style: GoogleFonts.robotoMono(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700),
                              )
                            ]),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          child: Container(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    0.0, 20.0, 0.0, 5.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.question_answer,
                                      size: 20.0,
                                    ),
                                    Text(
                                      '  Have Something To Write?',
                                      style: GoogleFonts.robotoSlab(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                          width: 280,
                                          padding: EdgeInsets.all(10.0),
                                          child: TextField(
                                              style: TextStyle(
                                                  color: Colors.black),
                                              controller: nameController,
                                              autocorrect: true,
                                              decoration: InputDecoration(
                                                  hintText: 'Name',
                                                  helperStyle:
                                                      GoogleFonts.robotoSlab(
                                                          fontSize: 15.0,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                  fillColor: Colors.black,
                                                  focusColor: Colors.black))),
                                      Container(
                                          width: 280,
                                          padding: EdgeInsets.all(10.0),
                                          child: TextField(
                                            style: TextStyle(
                                                color: Colors.black),
                                            controller: emailController,
                                            autocorrect: true,
                                            decoration: InputDecoration(
                                                hintText: 'Email',
                                                helperStyle:
                                                    GoogleFonts.robotoSlab(
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                fillColor: Colors.black,
                                                focusColor: Colors.black),
                                          )),
                                      Container(
                                          width: 280,
                                          padding: EdgeInsets.all(10.0),
                                          child: TextField(
                                            style: TextStyle(
                                                color: Colors.black),
                                            controller: phoneNumberController,
                                            autocorrect: true,
                                            decoration: InputDecoration(
                                              hintText: 'Message',
                                              helperStyle:
                                                  GoogleFonts.robotoSlab(
                                                      fontSize: 15.0,
                                                      fontWeight:
                                                          FontWeight.w700),
                                            ),
                                          )),
                                      AnimatedButton(
                                        onPressed: webCall,
                                        height: 50.0,
                                        color: Colors.black45,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Send',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                              )),
                                        ),
                                      ),
                                      Visibility(
                                          visible: visible,
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 30),
                                              child:
                                                  CircularProgressIndicator())),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                        ),
                      ]),
                    ),
                  ],
                ),
              )),
        ),
      );
}
