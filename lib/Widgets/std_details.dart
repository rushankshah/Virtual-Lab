import 'package:animate_do/animate_do.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:turing/Widgets/cards.dart';

import 'card_child.dart';

class StdDetails extends StatelessWidget {
  StdDetails(this.title, [this.children = const <StdDetails>[]]);

  final String title;
  final List<StdDetails> children;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        title,
        style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontFamily: 'DustismoRomanBold'),
      ),
      children: <Widget>[
        GestureDetector(
          child: Cards(
            colour: Color(0xFFbdd4ff),
            childCard: CardChild(
              text: '1. Growing \n plants from \n seeds',
              wid: BounceInRight(
                child: FlareActor(
                  'images/Plant new 3.flr',
                  animation: "plant",
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
