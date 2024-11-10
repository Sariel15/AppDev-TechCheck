import 'package:flutter/material.dart';
import 'MainMenu.dart';

class ContactNotFixed extends StatelessWidget {
  const ContactNotFixed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
              margin: const EdgeInsets.all(100),
              child: (Image.asset('images/PHONE.png'))),
          const Text(
              "If your PC is not working yet, Please contact this number",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.brown,
              )),
          const Text("\n0930-123-4567\n",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold)),
          SizedBox(
              width:
                  (MediaQuery.of(context).size.width / 3), // <-- match_parent
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
        ],
      ),
    ));
  }
}
