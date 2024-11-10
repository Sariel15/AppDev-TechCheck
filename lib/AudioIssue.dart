import 'package:flutter/material.dart';
import 'MainMenu.dart';
import 'ContactNotFixed.dart';

class AudioIssue extends StatelessWidget {
  const AudioIssue({super.key});

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
                      child: Text('AUDIO ISSUES',
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
                    '\n1. Shut down and restart the system. Surprisingly often, this solves the problem.'
                    '\n\n2. Verify that all cables are connected, that the speakers have power and are switched on,'
                    'that the volume control is set to an audible level, that you haven\'t muted audio in Windows, and so on.'
                    '\n\n3. Determine the scope of the problem. If the problem occurs with only one program, visit the web sites '
                    'for Microsoft, the software company, and the audio adapter maker to determine if there is a known problem '
                    'with that program and audio adapter combination. If the problem occurs globally, continue with the following steps.',
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
