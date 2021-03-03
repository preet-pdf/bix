import 'package:bix/Homepagedata/mininav.dart';
import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ResponsiveWidget(
          desktopScreen: Container(
        child: Center(
          child: Column(
            children: [
              Text('Skills',style: TextStyle(color:Colors.white70),),
              SizedBox(height: 5.0,),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0,0.0),
                    child: Card(
                      color: Colors.white70,
                      child: Text('Python'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(80.0, 0.0, 0.0,50.0),
                    child: Card(
                      color: Colors.white70,
                      child: Text('Flutter'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(140.0, 0.0, 0.0,50.0),
                    child: Card(
                      color: Colors.white70,
                      child: Text('Php'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(180.0, 0.0, 0.0,50.0),
                    child: Card(
                      color: Colors.white70,
                      child: Text('Firebase'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(240.0, 0.0, 0.0,50.0),
                    child: Card(
                      color: Colors.white70,
                      child: Text('ML&DL'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(320.0, 0.0, 0.0,50.0),
                    child: Card(
                      color: Colors.white70,
                      child: Text('Dart'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(350.0, 0.0, 0.0,0.0),
                    child: Card(color: Colors.white70, child: Text('Git')),
                  )
                ],
              ),
            ],
          ),
        ),
      ));
}
