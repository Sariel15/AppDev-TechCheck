// WELCOME PAGE

import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'main2.dart';
import 'MainMenu.dart';
import 'SignUp.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            // child: SizedBox(
            //     width:
            //         (MediaQuery.of(context).size.width), // <-- match_parent
            SizedBox(
                width: (MediaQuery.of(context).size.width),
                child: Align(
                    alignment: Alignment.center,
                    child: (Image.asset('images/LOGO-NAME.png')))),
            // Container(
            //     margin: const EdgeInsets.all(10.0),
            //     child: (Image.asset('images/LOGO-NAME.png'))),
            SizedBox(
                width:
                    (MediaQuery.of(context).size.width / 2), // <-- match_parent
                height: (MediaQuery.of(context).size.height / 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                  child: const Text('Log In', style: TextStyle(fontSize: 30)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                )),
            const Text(''),
            SizedBox(
                width:
                    (MediaQuery.of(context).size.width / 2), // <-- match_parent
                height: (MediaQuery.of(context).size.height / 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                  child: const Text('Sign Up', style: TextStyle(fontSize: 30)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                )),
            Stack(
              children: <Widget>[
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                        margin: const EdgeInsets.all(10.0),
                        child: Container(
                            height: (MediaQuery.of(context).size.height / 7),
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
                    bottom: 50,
                    child: Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: const EdgeInsets.all(10.0),
                            child: (Image.asset('images/YARN.png',
                                height: 200, width: 200)))))
              ],
            )
          ],
        ),
      ),
    );
  }
}
