import 'package:flutter/material.dart';
import 'package:turing/Widgets/animation_box.dart';

import 'cards.dart';

class Simulator extends StatefulWidget {
  final int std, theme;
  Simulator({this.std, this.theme});
  @override
  _SimulatorState createState() => _SimulatorState(std, theme);
}

class _SimulatorState extends State<Simulator>
    with AutomaticKeepAliveClientMixin<Simulator> {
  final int std, theme;
  int test = 1;
  _SimulatorState(this.std, this.theme);
  bool isEnabled() {
    if (1 == test)
      return true;
    else
      return false;
  }

  @override
  Widget build(BuildContext context) {
    if (std == 7) {
      if (theme == 1) {
        print('Standard 7 Theme 1');
      }
    }
    return ListView(
      children: <Widget>[
        AnimationBox(
          animation: Center(
            child: Text('Animations will appear over here'),
          ),
        ),
        MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22.0),
          ),
          child: Cards(
            height: 50,
            radius: 30,
            colour: isEnabled() ? Colors.red[300] : Colors.red[100],
            childCard: Center(child: Text('Button Example')),
          ),
          onPressed: isEnabled()
              ? () {
                  setState(() {
                    test = test == 0 ? 1 : 0;
                  });
                }
              : null,
        )
      ],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
