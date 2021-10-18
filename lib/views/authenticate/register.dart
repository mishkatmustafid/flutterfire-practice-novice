// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice01/services/auth.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  const Register({Key? key, required this.toggleView}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();

  String email = '', password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Text('Sign Up to Brew Crew'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: <Widget>[
          TextButton.icon(
            icon: Icon(Icons.person),
            label: Text('Sign In'),
            onPressed: () => widget.toggleView(),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              TextFormField(
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                obscureText: true,
                onChanged: (val) {
                  setState(() => password = val);
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink[400],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  // dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                  // if (result == null) {
                  //   print('error signing in');
                  // } else {
                  //   print('signed in');
                  // }
                  print(email);
                  print(password);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
