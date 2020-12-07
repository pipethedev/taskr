import 'package:flutter/material.dart';
import 'package:taskr/forgotpassword.dart';
import 'package:taskr/successpage.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
              'Reset Password',
              style: TextStyle(fontSize: 35),
            ),
            Text(
                'Reset code was sent to your mail. Please enter the code and create a new password',
                style: TextStyle(fontSize: 18, color: Colors.grey)),
            SizedBox(height: 30.0),
            Text("Reset Code", style: TextStyle(fontSize: 23)),
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
              height: 40.0,
            ),
            Text("Confirm Password", style: TextStyle(fontSize: 23)),
            TextField(
              obscureText: true,
              decoration:
                  InputDecoration(hintText: 'Re-Enter your password here'),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
                child: Center(
              child: GestureDetector(
                onTap: openSuccessPage,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 100, vertical: 20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Color(0xfff96060)),
                  child: Text("Reset Password",
                      style: TextStyle(fontSize: 18.0, color: Colors.white)),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  void openSuccessPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SuccessPage()));
  }
}
