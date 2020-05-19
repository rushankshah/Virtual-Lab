import 'package:animate_do/animate_do.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class CardChild extends StatelessWidget {
  final String text, flareFileDirectory, animationName;
  CardChild({this.text, this.animationName, this.flareFileDirectory});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(
          width: 20,
        ),
        BounceInLeft(
          child: Text(
            '$text',
            style: kCardText,
          ),
        ),
        Expanded(
          child: BounceInRight(
            child: FlareActor(
              flareFileDirectory,
              animation: animationName,
            ),
          ),
        )
      ],
    );
  }
}
