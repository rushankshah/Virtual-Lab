import 'package:flutter/material.dart';

class AnimationBox extends StatelessWidget {
  final Widget animation;

  AnimationBox({this.animation});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      height: 500,
      width: double.infinity,
      child: animation,
    );
  }
}
