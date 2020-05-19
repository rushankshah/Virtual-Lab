import 'package:flutter/material.dart';
import 'package:turing/Widgets/standard_and_theme_details.dart';

import '../constants.dart';
import 'activity_layout.dart';

class Standard7Theme1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Activity(
            activityName:
                '1. Germinate seeds to observe how plants grow from seeds.',
            Colour: Color(0xFFffbed1),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/activityDetail',
                arguments: StandardAndThemeDetails(theme: 1, standard: 7));
          },
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xFFa5ffec),
          ),
          width: double.infinity,
          child: ExpansionTile(
            title: Text(
              '2. Test the presence of carbohydrates, proteins and fats in food items.',
              style: kActivityText,
            ),
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Activity(
                Colour: Color(0xFFa5ffec),
                activityName:
                    '2a. Test the presence of carbohydrates in food items',
              ),
              SizedBox(
                width: double.infinity,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Activity(
                activityName:
                    '2b. Test the presence of proteins in food items.',
                Colour: Color(0xFFa5ffec),
              ),
              SizedBox(
                width: double.infinity,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Activity(
                activityName: '2c. Test the presence of fats in food items.',
                Colour: Color(0xFFa5ffec),
              )
            ],
          ),
        ),
        Activity(
          Colour: Color(0xFFffff99),
          activityName: '3. Observe stomata in leaves.',
        ),
        Activity(
          activityName:
              '4. Study that leaves prepare starch by the process of photosynthesis.',
          Colour: Color(0xFFeebbfa),
        ),
        Activity(
          Colour: Color(0xFFa5ffec),
          activityName: '5. Study how insect pests spoil food grains',
        ),
        Activity(
          activityName:
              '6. Observation of pond water for presence of micro-organisms.',
          Colour: Color(0xFFffbed1),
        ),
      ],
    );
  }
}
