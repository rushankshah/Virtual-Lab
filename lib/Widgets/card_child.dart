import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class CardChild extends StatelessWidget {
  String text;
  //String img;
  Widget wid;
  CardChild({this.text, this.wid});

  @override
  Widget build(BuildContext context) {
    print('$text');
    //print('$img');
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(
          width: 20,
        ),
        BounceInLeft(
          child: Text(
            '$text',
            style: kcard_text,
          ),
        ),
        Expanded(
          child: wid,
        )
      ],
    );
  }
}
