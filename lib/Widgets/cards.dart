import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final Color colour;
  final Widget childCard;
  final double radius;
  final double l, t, r, b;

  Cards(
      {this.colour,
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
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(radius)),
    );
  }
}
