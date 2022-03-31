import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mat3task2/pages/homepage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'loginpage',
      home: loginpage(),
    );
  }
}

class loginpage extends StatefulWidget {
  loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 120,
                ),
                Image.asset('assets/loginlogo.jpg'),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 25, color: Colors.blueAccent),
                )
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(fontSize: 20),
                filled: true,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 20),
                filled: true,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                ButtonTheme(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Text(
                        'login',
                      ),
                      style:
                          ElevatedButton.styleFrom(primary: Colors.blueAccent)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
