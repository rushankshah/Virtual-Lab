import 'package:flutter/material.dart';
import 'package:turing/Widgets/card_child.dart';
import 'package:turing/Widgets/cards.dart';
import 'package:turing/Widgets/standard_7_theme_1.dart';
import 'package:turing/Widgets/standard_and_theme_details.dart';
import 'package:turing/constants.dart';

class ActivityScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final StandardAndThemeDetails args =
        ModalRoute.of(context).settings.arguments;
    String standard, themeName, flareFilePath, animationName;
    Widget activityWidget;
    int std = args.standard;
    int theme = args.theme;
    if (std == 7) {
      standard = 'VII';
      if (theme == 1) {
        themeName = '1. Food';
        flareFilePath = 'images/Plant new 3.flr';
        animationName = 'plant';
        activityWidget = Standard7Theme1();
      }
    } else if (std == 8) {
      standard = 'VIII';
    }
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 40,
          ),
        ),
        title: Image(
          height: 75,
          image: AssetImage('images/logo.png'),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 12,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Standard $standard',
                    style: kOnScreenStandardDetailText,
                  ),
                ),
              ],
            ),
            Container(
              height: 140,
              width: double.infinity,
              child: Cards(
                colour: Color(0xFFbdd4ff),
                childCard: CardChild(
                  text: themeName,
                  flareFileDirectory: flareFilePath,
                  animationName: animationName,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: activityWidget,
            ),
          ],
        ),
      ),
    );
  }
}
