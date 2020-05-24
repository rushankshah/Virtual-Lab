import 'package:flutter/material.dart';
import 'package:turing/constants.dart';
import 'activity_layout.dart';
import 'question_and_answer_widget.dart';
class Theory extends StatelessWidget {
  final String standard,
        activityName,
        q1Answer,
        q2Answer,
        q3Answer,
        q4Answer,
        q5Answer,
        q6Answer,
        q7Answer;
        Theory({this.activityName,this.q1Answer,this.q2Answer,this.q3Answer,this.q4Answer,this.q5Answer,this.q6Answer,this.q7Answer,this.standard});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                      'Standard $standard',
                      style: kOnScreenStandardDetailText,
                    ),
                  ),
                ],
              ),
              Activity(
                colour: Color(0xFFffbed1),
                activityName: activityName,
              ),
              SizedBox(
                height: 20,
              ),
              QuestionAnswerWidget(
                colour: Color(0xFFbdd4ff),
                answer: q1Answer,
                question: 'What we have to do?',
              ),
              QuestionAnswerWidget(
                question: ' What do we need?',
                answer: q2Answer,
                colour: Color(0xFFffff99),
              ),
              QuestionAnswerWidget(
                colour: Color(0xFFa5ffec),
                answer: q3Answer,
                question: ' How do we proceed?',
              ),
              QuestionAnswerWidget(
                question: 'What do we observe?',
                answer: q4Answer,
                colour: Color(0xFFeebbfa),
              ),
              QuestionAnswerWidget(
                colour: Color(0xFFbdd4ff),
                answer: q5Answer,
                question: 'What do we conclude?',
              ),
              QuestionAnswerWidget(
                question: ' Let us answer',
                answer: q6Answer,
                colour: Color(0xFFffff99),
              ),
              QuestionAnswerWidget(
                colour: Color(0xFFa5ffec),
                answer: q7Answer,
                question: ' What more can we do?',
              ),
            ],
          ),
        );
  }
}