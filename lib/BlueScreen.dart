import 'package:flutter/material.dart';
import 'MainMenu.dart';
import 'ContactNotFixed.dart';

class BlueScreen extends StatelessWidget {
  const BlueScreen({super.key});

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
                      child: Text('BLUE SCREEN',
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
                    '\n1. Perform a hard reset.\n2. Run a hardware diagnostic test.\n3. Disconnect external devices.'
                    '\n4.Boot into safe mode with networking.\n5. Run the blue screen troubleshooter using SupportAssist.'
                    '\n6. Repair the missing or corrupted Windows system files.\n7.Update the BIOS and drivers.'
                    '\n8. Restore the computer using Windows System Restore.\n9. Restore the computer to factory default settings.',
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
