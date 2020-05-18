import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ActivityDetail extends StatelessWidget {
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
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 40,
          ),
        ),
        title: Image(
          height: 75,
          image: AssetImage('images/logo.png'),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
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
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                child: Text(
                  '1. Germinate seeds to observe how plants grow from seeds.',
                  style:
                      TextStyle(fontSize: 25, fontFamily: 'DustismoRomanBold'),
                ),
              ),
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFffbed1)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFFbdd4ff),
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
                        child: Text(
                          'What we have to do?',
                          style: TextStyle(
                              fontSize: 25, fontFamily: 'DustismoRomanBold'),
                        ),
                      ),
                      expanded: Column(children: [
                        //buildAllPhotos(),
                        ExpandableButton(
                          // <-- Collapses when tapped on
                          child: Text(
                            'Germinate seeds to observe how plants grow from seeds.',
                            style: TextStyle(
                                fontSize: 25, fontFamily: 'DustismoRomanBold'),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFFffff99),
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
                        child: Text(
                          ' What do we need?',
                          style: TextStyle(
                              fontSize: 25, fontFamily: 'DustismoRomanBold'),
                        ),
                      ),
                      expanded: Column(children: [
                        //buildAllPhotos(),
                        ExpandableButton(
                          // <-- Collapses when tapped on
                          child: Text(
                            'Dry whole seeds of gram or moong (green gram), Petri dish, cotton cloth, water.',
                            style: TextStyle(
                                fontSize: 25, fontFamily: 'DustismoRomanBold'),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFFa5ffec),
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
                        child: Text(
                          ' How do we proceed?',
                          style: TextStyle(
                              fontSize: 25, fontFamily: 'DustismoRomanBold'),
                        ),
                      ),
                      expanded: Column(
                        children: [
                          //buildAllPhotos(),
                          ExpandableButton(
                            // <-- Collapses when tapped on
                            child: Text(
                              '1. Soak 20-25 dry whole seeds of gram or moong in a Petri dish or container filled with water.\n2. Next day, drain the excess water and cover the seeds with wet cotton cloth.\n3. Keep the cotton cloth moist for 2-3 days by soaking them in water at regular intervals. Seeds may be washed or rinsed each day to prevent rotting.\n4. Observe the seeds each day.',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'DustismoRomanBold'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFFeebbfa),
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
                        child: Text(
                          'What do we observe?',
                          style: TextStyle(
                              fontSize: 25, fontFamily: 'DustismoRomanBold'),
                        ),
                      ),
                      expanded: Column(children: [
                        //buildAllPhotos(),
                        ExpandableButton(
                          // <-- Collapses when tapped on
                          child: Text(
                            'The seeds swell or increase in size on Day 1. Next day, a small white structure emerges from each seed. It gradually elongates during the next 2-3 days and small hair like outgrowths appear around it just behind it’s tips.',
                            style: TextStyle(
                                fontSize: 25, fontFamily: 'DustismoRomanBold'),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFFbdd4ff),
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
                        child: Text(
                          'What do we conclude?',
                          style: TextStyle(
                              fontSize: 25, fontFamily: 'DustismoRomanBold'),
                        ),
                      ),
                      expanded: Column(children: [
                        //buildAllPhotos(),
                        ExpandableButton(
                          // <-- Collapses when tapped on
                          child: Text(
                            '•	 Seeds germinate in the presence of water. Germination is the process of growth of plants from the seeds\n•	 During germination, the white structure that appears first develops into root.\n•	 The small hair-like outgrowths formed later are root hairs.\n•	 If seeds are kept moist for a few more days, another whitish structure emerges from the same point of the seed, which later develops into a shoot',
                            style: TextStyle(
                                fontSize: 25, fontFamily: 'DustismoRomanBold'),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFFffff99),
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
                        child: Text(
                          ' Let us answer',
                          style: TextStyle(
                              fontSize: 25, fontFamily: 'DustismoRomanBold'),
                        ),
                      ),
                      expanded: Column(children: [
                        //buildAllPhotos(),
                        ExpandableButton(
                          // <-- Collapses when tapped on
                          child: Text(
                            '1. Why don’t pulses stored in containers in the kitchen at home germinate?\n2. Name the part of plant where seeds are located.\n3.	 Do seeds ever germinate on the mother plant? Give reasons for your answer.\n4.	 Do all plants produce seeds? Justify your answer with examples.\n5. What are the other methods by which plants can reproduce?',
                            style: TextStyle(
                                fontSize: 25, fontFamily: 'DustismoRomanBold'),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFFa5ffec),
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
                        child: Text(
                          ' What more can we do?',
                          style: TextStyle(
                              fontSize: 25, fontFamily: 'DustismoRomanBold'),
                        ),
                      ),
                      expanded: Column(children: [
                        //buildAllPhotos(),
                        ExpandableButton(
                          // <-- Collapses when tapped on
                          child: Text(
                            '•	 Repeat the above activity at home with different seed samples. Observe and report to the teacher after 2-3 days.\n•	 Sow 1-2 germinated seeds in soil or sand in a pot and water them daily. You will observe that seeds develop into a small plant which gradually increases in size. Make observations about the height of the plant each day. Also note down the number of days it takes to produce the first leaf. Draw a figure of the young plant with leaves and roots.',
                            style: TextStyle(
                                fontSize: 25, fontFamily: 'DustismoRomanBold'),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 45,
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(80, 10, 80, 10),
              decoration: BoxDecoration(
                color: Colors.grey[500],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                'Go to Simulator',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'DustismoRomanBold',
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
