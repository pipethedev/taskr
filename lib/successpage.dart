import 'package:flutter/material.dart';
import 'package:taskr/homepage.dart';

class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/success.png'))),
          ),
          Text(
            'Successful!',
            style: TextStyle(fontSize: 35.0),
          ),
          Text(
            'You have successfully changed your password. Please use the new password to login',
            style: TextStyle(fontSize: 18.0),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 70.0,
          ),
          Center(
            child: InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage())),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: Color(0xfff96060)),
                child: Text("Continue",
                    style: TextStyle(fontSize: 18.0, color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
