import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turing/Widgets/card_child.dart';
import 'package:turing/Widgets/cards.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animate_do/animate_do.dart';
import 'package:turing/Widgets/drawer_widget.dart';
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
                  textStyle: kvirtual_lab,
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
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'DustismoRomanBold'),
            ),
            children: <Widget>[
              GestureDetector(
                child: Hero(
                  tag: 'Card',
                  child: Cards(
                    colour: Color(0xFFbdd4ff),
                    childCard: CardChild(
                      text: '1. Food',
                      wid: BounceInRight(
                        child: FlareActor(
                          'images/Plant new 3.flr',
                          animation: "plant",
                        ),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/growingplants');
                },
              ),
              Cards(
                colour: Color(0xFFa5ffec),
                childCard: CardChild(
                  text: '2. Materials',
                  wid: BounceInRight(
                    child: FlareActor(
                      'images/Material.flr',
                      animation: "Material",
                    ),
                  ),
                ),
              ),
              Cards(
                colour: Color(0xFFffff99),
                childCard: CardChild(
                  text: '3. The World\n of Living',
                  wid: BounceInRight(
                    child: FlareActor(
                      'images/exp3 (1).flr',
                      animation: 'dewdrop',
                    ),
                  ),
                ),
              )
            ],
          ),
          ExpansionTile(
            title: Text(
              'Standard VIII',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'DustismoRomanBold'),
            ),
            children: <Widget>[
              Text('Coming Soon',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'DustismoRomanBold'))
            ],
          )
        ],
      ),
    );
  }
}
