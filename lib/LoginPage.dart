import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'MainMenu.dart';
import 'SignUp.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // var setUsername = name;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _loggedIn = false;
  bool _obscureText = true;

  void _login() {
    if (_usernameController.text != '' && _passwordController.text != '') {
      if (_usernameController.text == userName &&
          _passwordController.text == password) {
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MainMenu()),
          );
          _loggedIn = true;
        });
      } else {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Error'),
            content: Text('Invalid username or password'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('OK',
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Invalid username or password'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('OK',
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffd6a5),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: (MediaQuery.of(context).size.height / 3),
              child: (Image.asset('images/LOGO-SIDE.png')),
            ),
            Text(
              'LOG IN',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Center(
              child: TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: '     Username',
                  labelStyle: TextStyle(color: Colors.brown),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Center(
              child: TextField(
                controller: _passwordController,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  labelText: '     Password',
                  labelStyle: TextStyle(color: Colors.brown),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.brown,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 200.0,
              height: 100.0,
              child: Center(
                child: ElevatedButton(
                  onPressed: _login,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.brown,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0)),
                  ),
                  child: Text(
                    'Log In',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'Sign Up/Create An Account ',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                      style: const TextStyle(
                          color: Colors.brown,
                          fontSize: 20.00,
                          decoration: TextDecoration.underline)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
