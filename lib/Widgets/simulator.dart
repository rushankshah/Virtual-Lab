import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flutter/material.dart';
import 'package:turing/Widgets/animation_box.dart';

import 'cards.dart';

class SimulatorController extends FlareController {
  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    // TODO: implement advance
    throw UnimplementedError();
  }

  @override
  void initialize(FlutterActorArtboard artboard) {
    // TODO: implement initialize
  }

  @override
  void setViewTransform(Mat2D viewTransform) {
    // TODO: implement setViewTransform
  }
}

class Simulator extends StatefulWidget {
  final int std, theme;
  Simulator({this.std, this.theme});
  @override
  _SimulatorState createState() => _SimulatorState();
}

class _SimulatorState extends State<Simulator>
    with AutomaticKeepAliveClientMixin<Simulator> {
  SimulatorController _simulatorController;
  double borderRadius = 22, height = 50, radius = 20;
  String flareFileDirectory, animationName;
  String selectedSeed = 'Grams';
  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    if (widget.std == 7) {
      if (widget.theme == 1) {
        flareFileDirectory = 'images/Theme1Activity1Step1.flr';
        animationName = 'bowl';
      }
    }
    return ListView(
      children: <Widget>[
        AnimationBox(
          animation: Center(
            child: FlareActor(
              flareFileDirectory,
              animation: animationName,
              controller: _simulatorController,
            ),
          ),
        ),
        Container(
          child: Center(
            child: DropdownButton(
              value: selectedSeed,
              items: [
                DropdownMenuItem(
                  child: Text('Grams'),
                  value: 'Grams',
                ),
                DropdownMenuItem(
                  child: Text('Moong'),
                  value: 'Moong',
                )
              ],
              onChanged: (value) {
                setState(() {
                  selectedSeed = value;
                });
              },
            ),
          ),
        ),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Cards(
            height: height,
            radius: radius,
            colour: Color(0xFFbdd4ff),
            childCard: Center(child: Text('Add Seeds')),
          ),
          onPressed: () {
            setState(() {
              animationName = 'Seeds';
            });
          },
        ),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Cards(
            height: height,
            radius: radius,
            colour: Color(0xFFffff99),
            childCard: Center(child: Text('Add Water')),
          ),
          onPressed: () {
            setState(() {
              animationName = 'water1';
            });
          },
        )
      ],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
