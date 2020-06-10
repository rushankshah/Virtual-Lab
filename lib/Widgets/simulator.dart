import 'package:flutter/material.dart';
import 'package:turing/Widgets/animation_box.dart';
import 'package:turing/Widgets/play_animation.dart';
import 'package:turing/constants.dart';
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
  String flareFileDirectory = 'images/Theme1Activity1Step1.flr';
  String selectedSeed = 'Grams';
  int _index = 0;

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

  void drainWater() {
    setState(() {
      _index = 9;
      Future.delayed(Duration(seconds: 4), () {
        setState(() {
          _index = 10;
        });
      });
    });
  }

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    // if (selectedSeed == 'Moong') {
    //   flareFileDirectory = 'images/exp1step1gram.flr';
    // } else if (selectedSeed == 'Grams') {
    //   flareFileDirectory = 'images/Theme1Activity1Step1.flr';
    // }
    String theoryText = '';
    String text = '';
    Color color = Colors.pink[200];
    if(_index == 0){
      theoryText = '1. Soak 20-25 dry whole seeds of gram or moong in a Petri dish or container filled with water.';
      text = 'Add seeds';
      color = Color(0xFFffbed1);
    }
    else if(_index == 1){
      theoryText = '1. Soak 20-25 dry whole seeds of gram or moong in a Petri dish or container filled with water.';
      text = 'Add water';
      color = Color(0xFFffff99);
    }
    else if(_index == 2){
      theoryText = '1. Soak 20-25 dry whole seeds of gram or moong in a Petri dish or container filled with water.';
      text = 'Add water';
      color = Color(0xFFffff99);
    }
    else if(_index == 3){
      theoryText = '1. Soak 20-25 dry whole seeds of gram or moong in a Petri dish or container filled with water.';
      text = 'Add water';
      color = Color(0xFFffff99);
    }
    else if(_index == 4){
      theoryText = '1. Soak 20-25 dry whole seeds of gram or moong in a Petri dish or container filled with water.';
      text = 'Add water';
      color = Color(0xFFffff99);
    }
    else if(_index == 5){
      theoryText = '1. Soak 20-25 dry whole seeds of gram or moong in a Petri dish or container filled with water.';
      text = 'Add water';
      color = Color(0xFFffff99);
    }
    else if(_index == 6){
      theoryText = '1. Soak 20-25 dry whole seeds of gram or moong in a Petri dish or container filled with water.';
      text = 'Add water';
      color = Color(0xFFffff99);
    }
    else if(_index == 7){
      theoryText = 'Soak the seeds overnight';
      text = 'Soak Overnight';
      color = Color(0xFFa5ffec);
    }
    else if(_index == 8){
      theoryText = 'Next day, drain the excess water and cover the seeds with wet cotton cloth. ';
      text = 'Drain Water';
      color = Color(0xFFeebbfa);
    }
    else if(_index == 9){
      theoryText = 'Next day, drain the excess water and cover the seeds with wet cotton cloth. ';
      text = 'Drain Water';
      color = Color(0xFFeebbfa);
    }
    else if(_index == 10){
      theoryText = 'Cover the seeds';
      text = 'Cover seeds';
      color = Color(0xFFbdd4ff);
    }
    else if(_index == 11){
      text = 'Restart the animation';
      theoryText = 'Congratulations on completing the experiment virtually';
    }
    return ListView(
      children: <Widget>[
        AnimationBox(
          animation: Center(
              child: Column(
                children: <Widget>[
                  Container(child: Text(theoryText, style: kActivityText,), height: 175,),
                  Container(
                    height: 300,
                    child: IndexedStack(
            index: _index,
            children: <Widget>[
                    PlayAnimation(
                      animationName: 'bowl',
                      flareFileDirectory: 'images/Theme1Activity1Step1.flr',
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
                    ),
                    PlayAnimation(
                      animationName: 'daynightswitch',
                      flareFileDirectory: flareFileDirectory,
                    ),
                    PlayAnimation(
                      animationName: 'drainwater',
                      flareFileDirectory: flareFileDirectory,
                    ),
                    PlayAnimation(
                      animationName: 'flow',
                      flareFileDirectory: flareFileDirectory,
                    ),
                    PlayAnimation(
                      animationName: 'cover',
                      flareFileDirectory: flareFileDirectory,
                    ),
            ],
          ),
                  ),
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
                  _index = 0;
                  if (selectedSeed == 'Grams') {
              flareFileDirectory = 'images/exp1step1gram.flr';
            } else if (selectedSeed == 'Moong') {
              flareFileDirectory = 'images/Theme1Activity1Step1.flr';
            }
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
            colour: color,
            childCard: Center(child: Text(text)),
          ),
          onPressed: () {
            if (selectedSeed == 'Grams') {
              flareFileDirectory = 'images/exp1step1gram.flr';
            } else if (selectedSeed == 'Moong') {
              flareFileDirectory = 'images/Theme1Activity1Step1.flr';
            }
            setState(() {
              if(_index == 0){
              setState(() {
                _index++;
              });
            }
              else if(_index == 1)
              firstWater();
              else if(_index == 3)
              secondWater();
              else if(_index == 5)
              thirdWater();
              else if(_index == 7)
              {
                flareFileDirectory = 'images/daynight.flr';
                _index++;
              }
              else if(_index == 8)
              {
                if (selectedSeed == 'Grams') {
              flareFileDirectory = 'images/remove water_new_gram.flr';
              } else if (selectedSeed == 'Moong') {
              flareFileDirectory = 'images/remove water_moong.flr';
              }
            drainWater();
              }
              else if(_index == 10){
                if (selectedSeed == 'Grams') {
              flareFileDirectory = 'images/Coverseeds_gram.flr';
              } else if (selectedSeed == 'Moong') {
              flareFileDirectory = 'images/Coverseeds_moong.flr';
              }
              setState(() {
                _index++;
              });
              }
              else if(_index == 11){
                setState(() {
                  if (selectedSeed == 'Grams') {
              flareFileDirectory = 'images/exp1step1gram.flr';
            } else if (selectedSeed == 'Moong') {
              flareFileDirectory = 'images/Theme1Activity1Step1.flr';
            }
                  _index = 0;
                  _index = 0;
                  
                });
              }
            });
          },
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
