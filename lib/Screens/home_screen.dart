import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turing/Widgets/card_child.dart';
import 'package:turing/Widgets/cards.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animate_do/animate_do.dart';
import 'package:turing/Widgets/drawer_widget.dart';
import 'package:turing/Widgets/std_details.dart';
import '../constants.dart';
import 'package:flare_flutter/flare_actor.dart';

class HomeScreen extends StatelessWidget {
  static GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
          icon: Icon(
            Icons.dashboard,
            color: Colors.black,
            size: 40,
          ),
        ),
        title: Image(
          height: 75,
          image: AssetImage('images/logo.png'),
        ),
      ),
      drawer: Drawer(
        key: _scaffoldKey,
        child: Container(
          color: Color(0xFF666666),
          child: DrawerWidget(),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            width: double.infinity,
            child: Cards(
              colour: Color(0xFFffbed1),
              childCard: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    flex: 1,
                    child: TyperAnimatedTextKit(
                      text: ['VIRTUAL\nLABS'],
                      textStyle: kvirtual_lab,
                      speed: Duration(milliseconds: 200),
                      isRepeatingAnimation: false,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: BounceInRight(
                      child: FlareActor(
                        'images/Lab Final.flr',
                        animation: 'lab',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //end of first
          StdDetails('Standard VII'),
        ],
      ),
    );
  }
}





// Container(
//   height:,
//   child: Padding(
//     padding: EdgeInsets.only(left: 10),
//     child: Text(
//
//       textAlign: TextAlign.start,
//       style: TextStyle(
//           fontSize: 28,
//           fontWeight: FontWeight.bold,
//           fontFamily: 'DustismoRomanBold'),
//     ),
//   ),
// ),
// Container(

//   child: 
// ),

//////

// Column(
//         children: <Widget>[
//           SizedBox(
//             height: 10,
//           ),
//           Expanded(
//             flex: 6,
//             child: Cards(
//               colour: Color(0xFFffbed1),
//               childCard: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: <Widget>[
//                   SizedBox(
//                     width: 10,
//                   ),
//                   TyperAnimatedTextKit(
//                     text: ['VIRTUAL\nLABS'],
//                     textStyle: kvirtual_lab,
//                     speed: Duration(milliseconds: 200),
//                     isRepeatingAnimation: false,
//                   ),
//                   Expanded(
//                     child: BounceInRight(
//                       child: FlareActor(
//                         'images/Lab Final.flr',
//                         animation: 'lab',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 5,
//           ),
//           Row(
//             children: <Widget>[
//               SizedBox(
//                 width: 20,
//               ),
//               Align(
//                 alignment: Alignment.bottomLeft,
//                 child: Text(
//                   'Standard VII',
//                   textAlign: TextAlign.start,
//                   style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'DustismoRomanBold'),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 5,
//           ),
//           Expanded(
//             flex: 5,
//             child: GestureDetector(
//               child: Cards(
//                 colour: Color(0xFFbdd4ff),
//                 childCard: CardChild(
//                   text: '1. Growing \n plants from \n seeds',
//                   wid: BounceInRight(
//                     child: FlareActor(
//                       'images/Plant new 3.flr',
//                       //fit: BoxFit.contain,
//                       animation: "plant",
//                     ),
//                   ),
//                 ),
//               ),
//               onTap: () {
//                 Navigator.pushNamed(context, '/growingplants');
//               },
//             ),
//           ),
//           SizedBox(
//             height: 5,
//           ),
//           Expanded(
//             flex: 5,
//             child: Cards(
//               colour: Color(0xFFa5ffec),
//               childCard: CardChild(
//                 text: '2. Materials',
//                 wid: BounceInRight(
//                   child: FlareActor(
//                     'images/Material.flr',
//                     //fit: BoxFit.contain,
//                     animation: "Material",
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 5,
//           ),
//           Expanded(
//             flex: 5,
//             child: Cards(
//               colour: Color(0xFFffff99),
//               childCard: CardChild(
//                 text: '3. The World\n of Living',
//                 wid: BounceInRight(
//                   child: FlareActor(
//                     'images/exp3 (1).flr',
//                     animation: 'dewdrop',
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
