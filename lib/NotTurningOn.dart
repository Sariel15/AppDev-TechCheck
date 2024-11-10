import 'package:flutter/material.dart';
import 'MainMenu.dart';
import 'ContactNotFixed.dart';

class NotTurningOn extends StatelessWidget {
  const NotTurningOn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Text('\n'),
                //BACK TO MAIN MENU
                SizedBox(
                    width: (MediaQuery.of(context).size.width /
                        3), // <-- match_parent
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
                          MaterialPageRoute(
                              builder: (context) => const MainMenu()),
                        );
                      },
                    )),
                const Text('\n'),
                const ListTile(
                  title: Center(
                      child: Text('NOT TURNING ON',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                  tileColor: Colors.brown,
                ),
                const Text('\nSTEPS',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown)),
                const Text(
                    '\nStep 1: Check Your Cables\nStep 2: Internal Wiring\nStep 3: POST Codes, Motherboards, and Hardware Tests'
                    '\nStep 4: Power Button\nStep 5: Test Your Components'
                    '\n\nIf you’ve followed the above troubleshooting steps and are still no closer to determining the problem,'
                    'it\’s quite possible you\’re dealing with a faulty motherboard, PSU, or an issue with your CPU.',
                    style: TextStyle(fontSize: 20.00, color: Colors.brown)),

                const Text('\n'),
                SizedBox(
                    width: (MediaQuery.of(context).size.width /
                        2), // <-- match_parent
                    height: (MediaQuery.of(context).size.height / 15),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0))),
                      child:
                          const Text('FIXED', style: TextStyle(fontSize: 25)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainMenu()),
                        );
                      },
                    )),
                const Text(''),
                SizedBox(
                    width: (MediaQuery.of(context).size.width /
                        2), // <-- match_parent
                    height: (MediaQuery.of(context).size.height / 15),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0))),
                      child: const Text('NOT FIXED',
                          style: TextStyle(fontSize: 25)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ContactNotFixed()),
                        );
                      },
                    )),
              ],
            ),
          ),
        ));
  }
}
