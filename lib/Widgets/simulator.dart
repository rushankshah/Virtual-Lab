import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/material.dart';
import 'package:turing/Widgets/animation_box.dart';
import 'cards.dart';

class Simulator extends StatefulWidget {
  final int std, theme;
  Simulator({this.std, this.theme});
  @override
  _SimulatorState createState() => _SimulatorState();
}

class _SimulatorState extends State<Simulator>
    with AutomaticKeepAliveClientMixin<Simulator> {
  final FlareControls _flareControls = FlareControls();
  double borderRadius = 22, height = 50, radius = 20;
  String flareFileDirectory;
  String selectedSeed = 'Grams';

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    if (widget.std == 7) {
      if (widget.theme == 1) {
        flareFileDirectory = 'images/Theme1Activity1Step1.flr';
      }
    }
    return ListView(
      children: <Widget>[
        AnimationBox(
          animation: Center(
            child: FlareActor(
              flareFileDirectory,
              animation: 'bowl',
              controller: _flareControls,
              alignment: Alignment.center,
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
              _flareControls.play('Seeds', mix: 1);
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
              _flareControls.play('water1', mix: 1, mixSeconds: 3);
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
