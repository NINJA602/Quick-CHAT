import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:messenger_clone/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        title: Text("QuickCHAT",style: TextStyle(
          fontSize: 22.0,
        ),),
        centerTitle: true,
        backgroundColor: Colors.green[700],
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.green[700],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children : [
              Image.asset('images/qclogo.jpg',height: 250.0,width: 150.0),
              SizedBox(height: 10.0),
              GestureDetector(
              onTap: () {
                AuthMethods().signInWithGoogle(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Color(0xffDB4437),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  "Sign In with Google",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            ],
            ),
        ),
      ),
    );
  }
}
