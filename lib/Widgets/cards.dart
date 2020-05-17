import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final int height;
  final int width;
  final Color colour;
  final Widget childCard;
  final double radius;
  final double l, t, r, b;


  Cards(
      {this.colour,
      this.height=160,
      this.width,
      this.childCard,
      this.radius = 37,
      this.t = 10,
      this.r = 10,
      this.l = 10,
      this.b = 10});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.fromLTRB(l, t, r, b),
      width: double.infinity,
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(radius)),
    );
  }
}
