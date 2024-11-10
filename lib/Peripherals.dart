import 'package:flutter/material.dart';
import 'MainMenu.dart';
import 'ContactNotFixed.dart';

class Peripherals extends StatelessWidget {
  const Peripherals({super.key});

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
                      child: Text('PERIPHERALS',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                  tileColor: Colors.brown,
                ),
                const Text('\nProblem with a Port',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown)),
                const Text(
                    '\nDelete a device from the Device Manager and then reboot your computer.'
                    'Once your PC is up and running again, install the device driver.',
                    style: TextStyle(fontSize: 20.00, color: Colors.brown)),
                const Text('\nProblem with the Port Connectors',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown)),
                const Text(
                    '\nA USB port can get damaged, too, resulting in no power or connection.'
                    'A solution would be to use another USB port.',
                    style: TextStyle(fontSize: 20.00, color: Colors.brown)),
                const Text('\nError with wireless keyboard or mouse',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown)),
                const Text(
                    '\nIf you’re using the current operating system and the wireless keyboard and mouse still don’t work,'
                    'the problem may be an interference with the line of sight or a weak battery. Use the peripherals on'
                    ' other PCs to help identify the cause of error.\n If the wireless device has a reset button, use it to reset the '
                    'device and refresh the connection. It would also help if you unplug the USB wireless receiver and leave it off for'
                    'about 10 seconds. This will help reestablish the wireless connection once you plug the receiver back into the port.',
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
