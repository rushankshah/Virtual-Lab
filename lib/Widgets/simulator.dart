import 'package:flutter/material.dart';
import 'package:turing/Widgets/animation_box.dart';
import 'package:turing/Widgets/play_animation.dart';
import 'cards.dart';

class Simulator extends StatefulWidget {
  final int std, theme;
  Simulator({this.std, this.theme});
  @override
  _SimulatorState createState() => _SimulatorState();
}

class _SimulatorState extends State<Simulator>
    with AutomaticKeepAliveClientMixin<Simulator> {
  double borderRadius = 22, height = 50, radius = 20;
  String flareFileDirectory;
  String selectedSeed = 'Grams';
  int _index = 0;
  int _waterCount = 0;

  void firstWater() {
    setState(() {
      _index = 2;
      Future.delayed(Duration(seconds: 3), () {
        setState(() {
          _index = 3;
        });
      });
    });
  }

  void secondWater() {
    setState(() {
      _index = 4;
      Future.delayed(Duration(seconds: 3), () {
        setState(() {
          _index = 5;
        });
      });
    });
  }

  void thirdWater() {
    setState(() {
      _index = 6;
      Future.delayed(Duration(seconds: 3), () {
        setState(() {
          _index = 7;
        });
      });
    });
  }

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    if (selectedSeed == 'Moong') {
      flareFileDirectory = 'images/exp1step1gram.flr';
    } else if (selectedSeed == 'Grams') {
      flareFileDirectory = 'images/Theme1Activity1Step1.flr';
    }
    return ListView(
      children: <Widget>[
        AnimationBox(
          animation: Center(
              child: IndexedStack(
            index: _index,
            children: <Widget>[
              PlayAnimation(
                animationName: 'bowl',
                flareFileDirectory: flareFileDirectory,
              ),
              PlayAnimation(
                animationName: 'Seeds',
                flareFileDirectory: flareFileDirectory,
              ),
              PlayAnimation(
                animationName: 'water1',
                flareFileDirectory: flareFileDirectory,
              ),
              PlayAnimation(
                animationName: 'waterflow1',
                flareFileDirectory: flareFileDirectory,
              ),
              PlayAnimation(
                animationName: 'water2',
                flareFileDirectory: flareFileDirectory,
              ),
              PlayAnimation(
                animationName: 'waterflow2',
                flareFileDirectory: flareFileDirectory,
              ),
              PlayAnimation(
                animationName: 'water3',
                flareFileDirectory: flareFileDirectory,
              ),
              PlayAnimation(
                animationName: 'waterflow3',
                flareFileDirectory: flareFileDirectory,
              )
            ],
          )),
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
              _index = 1;
              _waterCount = 0;
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
            print(_waterCount);
            setState(() {
              if (_waterCount == 0) {
                firstWater();
                _waterCount = _waterCount + 1;
              } else if (_waterCount == 1) {
                secondWater();
                _waterCount = _waterCount + 1;
              } else if (_waterCount == 2) {
                thirdWater();
                _waterCount = _waterCount + 1;
              } else {}
            });
          },
        ),
      ],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
