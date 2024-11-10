import 'package:flutter/material.dart';

class ExitPage extends StatelessWidget {
  const ExitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              margin: const EdgeInsets.all(10),
              child: (Image.asset('images/LOGO-NAME.png'))),
          const Text("THANK YOU FOR\nUSING THE APP",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold)),
          const Text(
              "\nCreated by:\nVeronica Mallari,\nKaysie Cruz,\nRhonee Tolentino,\nSofia Yunun",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.brown,
              )),
        ],
      ),
    );
  }
}
