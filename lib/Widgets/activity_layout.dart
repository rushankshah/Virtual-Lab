import 'package:flutter/material.dart';

import '../constants.dart';

class Activity extends StatelessWidget {
  final String activityName;
  final Color Colour;

  Activity({this.activityName, this.Colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
        child: Text(
          activityName,
          style: kActivityText,
        ),
      ),
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colour,
      ),
    );
  }
}
