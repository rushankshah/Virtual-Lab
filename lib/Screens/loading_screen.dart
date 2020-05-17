import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
//import 'package:turing/Screens/home_screen.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FlareActor(
                'images/Loading.flr',
                animation: 'logo',
                fit: BoxFit.cover,
              ),
            ),
            GestureDetector(
              child: Icon(
                Icons.navigate_next,
                color: Colors.black,
                size: 50,
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
            Text(
              'Get Started',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w100,
                fontFamily: 'DustismoBold',
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
