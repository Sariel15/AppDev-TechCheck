import 'package:flutter/material.dart';
import 'AudioIssue.dart';
import 'Peripherals.dart';
import 'SlowPc.dart';
import 'NotTurningOn.dart';
import 'BlueScreen.dart';
import 'MainMenu.dart';

class chooseProblem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Center(
                child: ListView(
          children: <Widget>[
            Container(
                height: (MediaQuery.of(context).size.height / 3),
                child: (Image.asset('images/LOGO-SIDE.png'))),
            const ListTile(
                title: Center(
                    child: Text('SELECT A PROBLEM',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown)))),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => slowPc()),
                );
              },
              title: const Center(
                  child: Text('SLOW PC',
                      style: TextStyle(fontSize: 25, color: Colors.white))),
              tileColor: Colors.brown,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotTurningOn()),
                );
              },
              title: const Center(
                  child: Text('NOT TURNING ON',
                      style: TextStyle(fontSize: 25, color: Colors.white))),
              tileColor: Colors.brown,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Peripherals()),
                );
              },
              title: const Center(
                  child: Text('PERIPHERALS',
                      style: TextStyle(fontSize: 25, color: Colors.white))),
              tileColor: Colors.brown,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AudioIssue()),
                );
              },
              title: const Center(
                  child: Text('AUDIO ISSUE',
                      style: TextStyle(fontSize: 25, color: Colors.white))),
              tileColor: Colors.brown,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BlueScreen()),
                );
              },
              title: const Center(
                  child: Text('BLUE SCREEN',
                      style: TextStyle(fontSize: 25, color: Colors.white))),
              tileColor: Colors.brown,
            ),
            const Text('\n\n\n'),
            SizedBox(
                width:
                    (MediaQuery.of(context).size.width / 6), // <-- match_parent
                height: (MediaQuery.of(context).size.height / 18),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 25,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainMenu()),
                    );
                  },
                )),
            const Text('\n'),
            Container(
              height: 90,
              width: 100,
              color: Color(0xffb5905e),
            )
          ],
        ))));
  }
}
