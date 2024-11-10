import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'MainMenu.dart';
import 'LoginPage.dart';

final TextEditingController _usernameController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final String userName = _usernameController.text;
final String password = _passwordController.text;

//final signupText = TextInfo();

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _loggedIn = false;
  bool _obscureText = true;

  void _login() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
      _loggedIn = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: (MediaQuery.of(context).size.height / 8),
              child: (Image.asset('images/YARN.png')),
            ),
            Text(
              'Create TechCheck Account',
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
                  fillColor: Colors.white70,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2, color: Colors.brown)),
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
                  fillColor: Colors.white70,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2, color: Colors.brown)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                    'Create Account',
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
                      text: 'Already Have an Account? ',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
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
