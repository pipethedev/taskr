import 'package:flutter/material.dart';
import 'package:taskr/resetpassword.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
              'Forgot Password',
              style: TextStyle(fontSize: 35),
            ),
            Text(
                'Please enter your mail ID to recieve your password and reset information',
                style: TextStyle(fontSize: 18, color: Colors.grey)),
            SizedBox(height: 30.0),
            Text("Mail ID", style: TextStyle(fontSize: 23)),
            TextField(
              decoration: InputDecoration(hintText: 'johndoe@example.com'),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40.0,
            ),
            Expanded(
                child: Center(
              child: GestureDetector(
                onTap: openResetPassword,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 100, vertical: 20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Color(0xfff96060)),
                  child: Text("Send Request",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }

  void openResetPassword() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ResetPassword()));
  }
}
