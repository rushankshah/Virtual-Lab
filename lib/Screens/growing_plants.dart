import 'package:animate_do/animate_do.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:turing/Widgets/card_child.dart';
import 'package:turing/Widgets/cards.dart';
import 'package:turing/Widgets/drawer_widget.dart';
import 'package:expandable/expandable.dart';

class GrowingPlants extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

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
        child: Container(
          color: Color(0xFF666666),
          child: DrawerWidget(),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 12,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Standard VII',
                    //textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'DustismoRomanBold'),
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 5,
              child: Cards(
                colour: Color(0xFFbdd4ff),
                childCard: CardChild(
                  text: '1. Growing \n plants from \n seeds',
                  wid: BounceInRight(
                    child: FlareActor(
                      'images/Plant new 3.flr',
                      //fit: BoxFit.contain,
                      animation: "plant",
                    ),
                  ),
                ),
              ),
            ),
            //
            //         ExpandablePanel(
            //   header: Text('TITLE'),
            //   collapsed: Text('BODY', softWrap: true, maxLines: 2, overflow: TextOverflow.ellipsis,),
            //   expanded: Text('EXPANDED BODY', softWrap: true, ),
            //   // tapHeaderToExpand: true,
            //   // hasIcon: true,
            // ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ExpandableNotifier(
                // <-- Provides ExpandableController to its children
                child: Column(
                  children: [
                    Expandable(
                      // <-- Driven by ExpandableController from ExpandableNotifier
                      collapsed: ExpandableButton(
                        // <-- Expands when tapped on the cover photo
                        child: Card(
                          child: ListTile(
                            leading: Image.asset('images/drawerLogo.png'),
                            title: Text('EXPERIMENT 1'),
                          ),
                        ),
                      ),
                      expanded: Column(children: [
                        //buildAllPhotos(),
                        ExpandableButton(
                          // <-- Collapses when tapped on
                          child: Text(
                              "Back ExpandablePanel has a number of properties to customize its behavior, but it's restricted by having a title at the top and an expand icon shown as a down arrow (on the right or on the left). If that's not enough, you can implement custom expandable widgets by using a combination of Expandable, ExpandableNotifier, and ExpandableButton"),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              color: Colors.pinkAccent,
              padding: EdgeInsets.all(15),
              child: ExpandableNotifier(
                // <-- Provides ExpandableController to its children
                child: Column(
                  children: [
                    Expandable(
                      // <-- Driven by ExpandableController from ExpandableNotifier
                      collapsed: ExpandableButton(
                        // <-- Expands when tapped on the cover photo
                        child: Text(
                            'EXP 2  if you show a list of articles with a summary of each article, and the user expands an article to read it, they expect the expanded article to occupy as much screen space as possible. The Expandable package contains a wid '),
                      ),
                      expanded: Column(children: [
                        //buildAllPhotos(),
                        ExpandableButton(
                          // <-- Collapses when tapped on
                          child: Text(
                              "Back ExpandablePanel has a number of properties to customize its behavior, but it's restricted by having a title at the top and an expand icon shown as a down arrow (on the right or on the left). If that's not enough, you can implement custom expandable widgets by using a combination of Expandable, ExpandableNotifier, and ExpandableButton"),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
