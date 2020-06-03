import 'package:flare_flutter/flare_actor.dart';
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
  double borderRadius = 22, height = 50, radius = 20;
  String flareFileDirectory;
  String selectedSeed = 'Grams';
  int _index = 0;
  int watercount = 0;

  void firstwater() {
    setState(() {
      _index = 2;
      Future.delayed(Duration(seconds: 5), () {
        setState(() {
          _index = 3;
        });
      });
    });
  }

  void secondwater() {
    setState(() {
      _index = 4;
      Future.delayed(Duration(seconds: 5), () {
        setState(() {
          _index = 5;
        });
      });
    });
  }

  void thirdwater() {
    setState(() {
      _index = 6;
      Future.delayed(Duration(seconds: 5), () {
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
    if (widget.std == 7) {
      if (widget.theme == 1) {
        //flareFileDirectory = 'images/Theme1Activity1Step1.flr';
      }
    }
    return ListView(
      children: <Widget>[
        AnimationBox(
          animation: Center(
              child: IndexedStack(
            index: _index,
            children: <Widget>[
              FlareActor(
                flareFileDirectory,
                animation: 'bowl',
                alignment: Alignment.center,
              ),
              FlareActor(
                flareFileDirectory,
                animation: 'Seeds',
                alignment: Alignment.center,
              ),
              FlareActor(
                flareFileDirectory,
                animation: 'water1',
                alignment: Alignment.center,
              ),
              FlareActor(
                flareFileDirectory,
                animation: 'waterflow1',
                alignment: Alignment.center,
              ),
              FlareActor(
                flareFileDirectory,
                animation: 'water2',
                alignment: Alignment.center,
              ),
              FlareActor(
                flareFileDirectory,
                animation: 'waterflow2',
                alignment: Alignment.center,
              ),
              FlareActor(
                flareFileDirectory,
                animation: 'water3',
                alignment: Alignment.center,
              ),
              FlareActor(
                flareFileDirectory,
                animation: 'waterflow3',
                alignment: Alignment.center,
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
            print(watercount);
            setState(() {
              if (watercount == 0) {
                firstwater();
                watercount = watercount + 1;
              } else if (watercount == 1) {
                secondwater();
                watercount = watercount + 1;
              } else if (watercount == 2) {
                thirdwater();
                watercount = watercount + 1;
              }
              // else{
              //   Scaffold.of(context).showSnackBar(
              //     SnackBar(
              //       content: Row(
              //         children: <Widget>[
              //           Icon(Icons.error),
              //           Text('You cannot add more Water',style: TextStyle(fontSize:20,),),
              //         ],
              //       ),
              //     ),
              //   );
              // }
              //});
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
