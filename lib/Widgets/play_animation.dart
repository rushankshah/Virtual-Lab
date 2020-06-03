import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class PlayAnimation extends StatelessWidget {
  final String flareFileDirectory, animationName;

  PlayAnimation({this.flareFileDirectory, this.animationName});

  @override
  Widget build(BuildContext context) {
    return FlareActor(
      flareFileDirectory,
      animation: animationName,
      alignment: Alignment.center,
      fit: BoxFit.fill,
    );
  }
}
