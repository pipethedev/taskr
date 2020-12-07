import 'package:flutter/material.dart';
import 'package:taskr/forgotpassword.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => {},
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0),
            Text(
              'Welcome Back',
              style: TextStyle(fontSize: 35),
            ),
            Text('Sign in to continue...',
                style: TextStyle(fontSize: 18, color: Colors.grey)),
            SizedBox(height: 30.0),
            Text("Email", style: TextStyle(fontSize: 23)),
            TextField(
              decoration: InputDecoration(hintText: 'John Doe'),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text("Password", style: TextStyle(fontSize: 23)),
            TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: 'Enter your password here'),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: openForgotPassword,
                  child:
                      Text("Forgot Password", style: TextStyle(fontSize: 16.0)),
                )
              ],
            ),
            Expanded(
                child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 130, vertical: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: Color(0xfff96060)),
                child: Text("Log In",
                    style: TextStyle(fontSize: 18.0, color: Colors.white)),
              ),
            ))
          ],
        ),
      ),
    );
  }

  void openForgotPassword() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ForgotPassword()));
  }
}
