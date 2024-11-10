import 'dart:ui';

import 'package:flutter/material.dart';
import 'chooseProblem.dart';
import 'ThingsToDo.dart';
import 'ExitPage.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MenuPage",
      home: Scaffold(
          appBar: AppBar(backgroundColor: Color(0xffb5905e)),
          body: Center(
              child: Column(children: <Widget>[
            const Text('\n\n\n'),
            //START BUTTON
            SizedBox(
                width:
                    (MediaQuery.of(context).size.width / 2), // <-- match_parent
                height: (MediaQuery.of(context).size.height / 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                  child: const Text('START', style: TextStyle(fontSize: 30)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => chooseProblem()),
                    );
                  },
                )),
            const Text(''),
            //LIST BUTTON
            SizedBox(
                width:
                    (MediaQuery.of(context).size.width / 2), // <-- match_parent
                height: (MediaQuery.of(context).size.height / 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                  child: const Text('LIST', style: TextStyle(fontSize: 30)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThingsToDo()),
                    );
                  },
                )),
            const Text(''),
            //EXIT BUTTON
            SizedBox(
                width:
                    (MediaQuery.of(context).size.width / 2), // <-- match_parent
                height: (MediaQuery.of(context).size.height / 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                  child: const Text('EXIT', style: TextStyle(fontSize: 30)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ExitPage()),
                    );
                  },
                )),
            const Text('\n\n\n\n\n\n\n\n'),
            Stack(
              children: <Widget>[
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                        margin: const EdgeInsets.all(10.0),
                        child: Container(
                            height: (MediaQuery.of(context).size.height / 6),
                            width: (MediaQuery.of(context).size.width * 2),
                            color: Color(0xffb5905e)))),
                Align(
                  alignment: AlignmentDirectional.topCenter,
                  child: Container(
                    width: double.infinity,
                    height: 300,
                  ),
                ),
                Positioned(
                    left: 0,
                    right: 20,
                    bottom: 85,
                    child: Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: const EdgeInsets.all(10.0),
                            child: (Image.asset('images/LOGO-NO-NAME.png',
                                height: 250, width: 250)))))
              ],
            )
          ]))),
    );
  }
}
