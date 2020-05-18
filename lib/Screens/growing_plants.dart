import 'package:animate_do/animate_do.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:turing/Widgets/card_child.dart';
import 'package:turing/Widgets/cards.dart';

class GrowingPlants extends StatelessWidget {
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
                    'Standard VII',
                    //textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'DustismoRomanBold'),
                  ),
                ),
              ],
            ),
            Container(
              height: 140,
              width: double.infinity,
              child: Hero(
                tag: 'Card',
                child: Cards(
                  colour: Color(0xFFbdd4ff),
                  childCard: CardChild(
                    text: '1. Food',
                    wid: BounceInRight(
                      child: FlareActor(
                        'images/Plant new 3.flr',
                        //fit: BoxFit.contain,
                        animation: "plant",
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(children: [
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                    child: Text(
                      '1. Germinate seeds to observe how plants grow from seeds.',
                      style: TextStyle(
                          fontSize: 25, fontFamily: 'DustismoRomanBold'),
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFffbed1)),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFa5ffec),
                  ),
                  width: double.infinity,
                  child: ExpansionTile(
                    title: Text(
                      '2. Test the presence of carbohydrates, proteins and fats in food items.',
                      style: TextStyle(
                          fontSize: 25, fontFamily: 'DustismoRomanBold'),
                    ),
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                          child: Text(
                            '2a. Test the presence of carbohydrates in food items',
                            style: TextStyle(
                                fontSize: 25, fontFamily: 'DustismoRomanBold'),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFa5ffec)),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                          child: Text(
                            '2b. Test the presence of fats in food items.',
                            style: TextStyle(
                                fontSize: 25, fontFamily: 'DustismoRomanBold'),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFa5ffec)),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                    child: Text(
                      '3. Observe stomata in leaves.',
                      style: TextStyle(
                          fontSize: 25, fontFamily: 'DustismoRomanBold'),
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFffff99)),
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                    child: Text(
                      '4. Study that leaves prepare starch by the process of photosynthesis.',
                      style: TextStyle(
                          fontSize: 25, fontFamily: 'DustismoRomanBold'),
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFeebbfa)),
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                    child: Text(
                      '5. Study how insect pests spoil food grains',
                      style: TextStyle(
                          fontSize: 25, fontFamily: 'DustismoRomanBold'),
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFa5ffec)),
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                    child: Text(
                      '6. Observation of pond water for presence of micro-organisms.',
                      style: TextStyle(
                          fontSize: 25, fontFamily: 'DustismoRomanBold'),
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFffbed1)),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
