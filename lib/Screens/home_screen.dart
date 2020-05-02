import 'package:flutter/material.dart';
import 'package:turing/Widgets/cards.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animate_do/animate_do.dart';
import 'package:turing/Widgets/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
          icon: Icon(
            Icons.dashboard,
            color: Colors.black,
            size: 40,
          ),
        ),
        title: Image(
          height: 75,
          image: AssetImage('images/logo.png'),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xFF666666),
          child: DrawerWidget(),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 6,
            child: Cards(
              colour: Color(0xFFfcabc2),
              childCard: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  TyperAnimatedTextKit(
                    text: ['VIRTUAL\nLABS'],
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 35,
                        fontFamily: 'FrostBiteNarrow'),
                    speed: Duration(milliseconds: 200),
                    isRepeatingAnimation: false,
                  ),
                  Image(
                    image: AssetImage('images/lab.gif'),
                    width: 200,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Standard VII',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'DustismoRomanBold'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 5,
            child: Cards(
              colour: Color(0xFF95aedd),
              childCard: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  BounceInLeft(
                    child: Text(
                      '1. Growing\n plants from\n seeds',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 28,
                          fontFamily: 'DustismoBold'),
                    ),
                  ),
                  Image(
                    image: AssetImage('images/Layer-3.gif'),
                    height: 100,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 5,
            child: Cards(
              colour: Color(0xFF90bdac),
              childCard: Container(),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 5,
            child: Cards(
              colour: Color(0xFFffff99),
              childCard: Container(),
            ),
          )
        ],
      ),
    );
  }
}
