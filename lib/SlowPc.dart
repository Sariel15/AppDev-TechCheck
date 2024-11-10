import 'package:flutter/material.dart';
import 'MainMenu.dart';
import 'ContactNotFixed.dart';

class slowPc extends StatelessWidget {
  const slowPc({super.key});

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
                      child: Text('SLOW PC',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                  tileColor: Colors.brown,
                ),
                const Text('\n1st Option',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown)),
                const Text(
                    '\n1.Press Windows key + S and enter troubleshoot. Select Troubleshoot settings from the menu.'
                    "\n2.Click on Additional troubleshooters.\n3.Now select the troubleshooter that you want to run.",
                    style: TextStyle(fontSize: 20.00, color: Colors.brown)),
                const Text('\n2nd Option',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown)),
                const Text(
                    '\n1.1.Open the Start menu or and press the Windows key, then type %temp% in the Search field.'
                    "\n2.Press Enter and a Temp folder should open."
                    '\n3.You can delete all files found in this folder and, if any files are in use and cannot be deleted, they can be skipped.',
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
