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
  String flareFileDirectory = 'images/Exp1gram.flr';
  String drainWaterAnimationName = '';
  String selectedSeed = 'Grams';
  String waterText = '';
  int _index = 0;
  int amount = 0;
  String flowName = '';
  bool _waterAdded = false;
  void firstWater() {
    setState(() {
      _index = 2;
      drainWaterAnimationName = 'drainwater1 ';
      waterText = 'Move ahead? Click here! (Atleast 400 ml water is suggested)';
      amount++;
      Future.delayed(Duration(seconds: 3), () {
        setState(() {
          _index = 3;
          _waterAdded = true;
        });
      });
    });
  }

  void secondWater() {
    setState(() {
      _index = 4;
      drainWaterAnimationName = 'drainwater2';
      waterText = 'Move ahead? Click here!';
      amount++;
      Future.delayed(Duration(seconds: 3), () {
        setState(() {
          _index = 5;
          _waterAdded = true;
        });
      });
    });
  }

  void thirdWater() {
    setState(() {
      _index = 6;
      drainWaterAnimationName = 'drainwater3';
      Future.delayed(Duration(seconds: 3), () {
        setState(() {
          flowName = 'flow3';
          _index = 7;
          _waterAdded = false;
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
      text = 'Add 200 ml water';
      color = Color(0xFFffff99);
    }
    else if(_index == 5){
      theoryText = '1. Soak 20-25 dry whole seeds of gram or moong in a Petri dish or container filled with water.';
      text = 'Add 200 ml water';
      color = Color(0xFFffff99);
    }
    else if(_index == 6){
      theoryText = '1. Soak 20-25 dry whole seeds of gram or moong in a Petri dish or container filled with water.';
      text = 'Add 200 ml water';
      color = Color(0xFFffff99);
    }
    else if(_index == 7){
      theoryText = '1. Soak 20-25 dry whole seeds of gram or moong in a Petri dish or container filled with water.';
      text = 'Soak Overnight';
      color = Color(0xFFa5ffec);
    }
    else if(_index == 8){
      theoryText = 'Soak the seeds overnight';
      text = 'Drain Water';
      color = Color(0xFFeebbfa);
    }
    else if(_index == 9){
      theoryText = 'Next day, drain the excess water and cover the seeds with wet cotton cloth. ';
      text = 'Drain Water';
      color = Color(0xFFeebbfa);
    }
    else if(_index == 10){
      theoryText = 'Next day, drain the excess water and cover the seeds with wet cotton cloth. ';
      text = 'Cover seeds';
      color = Color(0xFFbdd4ff);
    }
    else if(_index == 11){
      theoryText = 'Cover the seeds';
      text = 'Observe the next day -->>';
      color = Color(0xFFeebbfa);
    }
    else if(_index == 12){
      text = 'Restart the animation';
      theoryText = 'Congratulations on completing the experiment virtually';
      color = Color(0xFFffff99);
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
                      flareFileDirectory: 'images/Exp1gram.flr',
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
                      animationName: drainWaterAnimationName,
                      flareFileDirectory: flareFileDirectory,
                    ),
                    PlayAnimation(
                      animationName: flowName,
                      flareFileDirectory: flareFileDirectory,
                    ),
                    PlayAnimation(
                      animationName: 'cover',
                      flareFileDirectory: flareFileDirectory,
                    ),
                    PlayAnimation(
                      animationName: 'growth',
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
              flareFileDirectory = 'images/Exp1gram.flr';
            } else if (selectedSeed == 'Moong') {
              flareFileDirectory = 'images/Exp1moong.flr';
            }
                });
              },
            ),
          ),
        ),
        Column(
          children: <Widget>[
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
                  flareFileDirectory = 'images/Exp1gram.flr';
                } else if (selectedSeed == 'Moong') {
                  flareFileDirectory = 'images/Exp1moong.flr';
                }
                setState(() {
                  if(_index == 0){
                  setState(() {
                    _index++;
                  });
                }
                  else if(_index == 1)
                  {
                    firstWater();
                    }
                  else if(_index == 3)
                  {
                    secondWater();
                    }
                  else if(_index == 5)
                  {
                    thirdWater();
                    }
                  else if(_index == 7)
                  {
                    setState(() {
                      if (selectedSeed == 'Grams') {
                  flareFileDirectory = 'images/daynightgram.flr';
                } else if (selectedSeed == 'Moong') {
                  flareFileDirectory = 'images/daynightmoong.flr';
                }
                    _index++;
                    });
                  }
                  else if(_index == 8)
                  {
                    setState(() {
                      if (selectedSeed == 'Grams') {
                  flareFileDirectory = 'images/remove water_new_gram.flr';
                  } else if (selectedSeed == 'Moong') {
                  flareFileDirectory = 'images/remove water_new_moong.flr';
                  }
                    });
                drainWater();
                  }
                  else if(_index == 10){
                   
                  setState(() {
                     if (selectedSeed == 'Grams') {
                  flareFileDirectory = 'images/Coverseeds_new_gram.flr';
                  } else if (selectedSeed == 'Moong') {
                  flareFileDirectory = 'images/Coverseeds_new_moong.flr';
                  }
                    _index++;
                  });
                  }
                  else if(_index == 11)
                  {
                    setState(() {
                      if (selectedSeed == 'Grams') {
                  flareFileDirectory = 'images/daynightgram.flr';
                } else if (selectedSeed == 'Moong') {
                  flareFileDirectory = 'images/daynightmoong.flr';
                }
                    _index++;
                    });
                  }
                  else if(_index == 12){
                    setState(() {
                      if (selectedSeed == 'Grams') {
                  flareFileDirectory = 'images/exp1step1gram.flr';
                } else if (selectedSeed == 'Moong') {
                  flareFileDirectory = 'images/Theme1Activity1Step1.flr';
                }
                      _index = 0;
                      
                    });
                  }
                });
              },
            ),
            _waterAdded?FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: Cards(
                height: height,
                radius: radius,
                colour: Colors.white,
                childCard: Center(child: Text(waterText, style: TextStyle(color: Colors.black),)),
              ),
              onPressed: (){
                  if(amount == 1){
                    setState(() {
                      flareFileDirectory = 'images/daynight.flr';
                      drainWaterAnimationName = 'drainwater1';
                      _index = 8;
                      flowName = 'flow1';
                      _waterAdded = false;
                    });
                  }else if(amount == 2){
                    setState(() {
                      flareFileDirectory = 'images/daynight.flr';
                      drainWaterAnimationName = 'drainwater2';
                      _index = 8;
                      flowName = 'flow2';
                      _waterAdded = false;
                    });
                  }
              },
              ):Container()
          ],
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
