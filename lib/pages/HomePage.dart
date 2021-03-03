import 'package:bix/Homepagedata/Projectdata.dart';
import 'package:bix/Homepagedata/getintouch.dart';
import 'package:bix/Homepagedata/persondata.dart';
import 'package:bix/Homepagedata/projectx.dart';
import 'package:bix/Homepagedata/workflow.dart';
// import 'package:bix/Homepagedata/skilldata.dart';
import 'package:flutter/material.dart';
import 'package:bix/Homepagedata/nav.dart';
import 'package:bix/Homepagedata/homedata.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Desktopview()]),
              SingleChildScrollView(
                child: Container(child: Homedata()),
              ),
              Container(child: Mydata()),
             
              SizedBox(
              height:450.0 ,child: Container(child: Workflow())),
              SizedBox(height:35.0,child: Project()),
              SizedBox(
                height:520.0,child: Container(child: Projectx())),
                SizedBox(
                height:570.0,child: Container(child: Getintouch())),
                
            ],
          ),
        ),
      ),
    ));
  }
}
