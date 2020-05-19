import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:turing/constants.dart';

class QuestionAnswerWidget extends StatelessWidget {
  final String question;
  final String answer;
  final Color colour;

  QuestionAnswerWidget({this.question, this.answer, this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
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
                  question,
                  style: kActivityText,
                ),
              ),
              expanded: Column(children: [
                //buildAllPhotos(),
                ExpandableButton(
                  // <-- Collapses when tapped on
                  child: Text(
                    answer,
                    style: kActivityText,
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
