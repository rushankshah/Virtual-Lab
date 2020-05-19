import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turing/Widgets/card_child.dart';
import 'package:turing/Widgets/cards.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:turing/Widgets/drawer_widget.dart';
import 'package:turing/Widgets/standard_and_theme_details.dart';
import '../constants.dart';
import 'package:flare_flutter/flare_actor.dart';

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
      body: ListView(
        children: <Widget>[
          Cards(
            height: 200,
            colour: Color(0xFFffbed1),
            childCard: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                TyperAnimatedTextKit(
                  text: ['VIRTUAL\nLABS'],
                  textStyle: kVirtualLabText,
                  speed: Duration(milliseconds: 200),
                  isRepeatingAnimation: false,
                ),
                Expanded(
                  child: FlareActor(
                    'images/Lab Final.flr',
                    animation: 'lab',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          ExpansionTile(
            title: Text(
              'Standard VII',
              textAlign: TextAlign.start,
              style: kStandardDetailText,
            ),
            children: <Widget>[
              GestureDetector(
                child: Cards(
                  colour: Color(0xFFbdd4ff),
                  childCard: CardChild(
                    text: '1. Food',
                    flareFileDirectory: 'images/Plant new 3.flr',
                    animationName: 'plant',
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/activityScreen',
                      arguments:
                          StandardAndThemeDetails(standard: 7, theme: 1));
                },
              ),
              Cards(
                colour: Color(0xFFa5ffec),
                childCard: CardChild(
                  text: '2. Materials',
                  animationName: 'Material',
                  flareFileDirectory: 'images/Material.flr',
                ),
              ),
              Cards(
                colour: Color(0xFFffff99),
                childCard: CardChild(
                  text: '3. The World\n of Living',
                  flareFileDirectory: 'images/exp3 (1).flr',
                  animationName: 'dewdrop',
                ),
              )
            ],
          ),
          ExpansionTile(
            title: Text(
              'Standard VIII',
              textAlign: TextAlign.start,
              style: kStandardDetailText,
            ),
            children: <Widget>[
              Text(
                'Coming Soon',
                textAlign: TextAlign.center,
                style: kStandardDetailText,
              )
            ],
          )
        ],
      ),
    );
  }
}
