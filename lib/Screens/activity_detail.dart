import 'package:flutter/material.dart';
import 'package:turing/Widgets/activity_layout.dart';
import 'package:turing/Widgets/question_and_answer_widget.dart';
import 'package:turing/Widgets/standard_and_theme_details.dart';
import 'package:turing/constants.dart';

class ActivityDetail extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final StandardAndThemeDetails args =
        ModalRoute.of(context).settings.arguments;
    String standard,
        activityName,
        q1Answer,
        q2Answer,
        q3Answer,
        q4Answer,
        q5Answer,
        q6Answer,
        q7Answer;
    int std = args.standard;
    int theme = args.theme;
    int activityNumber = args.activityNumber;
    if (std == 7) {
      standard = 'VII';
      if (theme == 1) {
        if (activityNumber == 1) {
          activityName =
              '1. Germinate seeds to observe how plants grow from seeds.';
          q1Answer = 'Germinate seeds to observe how plants grow from seeds.';
          q2Answer =
              'Dry whole seeds of gram or moong (green gram), Petri dish, cotton cloth, water.';
          q3Answer =
              '1. Soak 20-25 dry whole seeds of gram or moong in a Petri dish or container filled with water.\n2. Next day, drain the excess water and cover the seeds with wet cotton cloth.\n3. Keep the cotton cloth moist for 2-3 days by soaking them in water at regular intervals. Seeds may be washed or rinsed each day to prevent rotting.\n4. Observe the seeds each day.';
          q4Answer =
              'The seeds swell or increase in size on Day 1. Next day, a small white structure emerges from each seed. It gradually elongates during the next 2-3 days and small hair like outgrowths appear around it just behind it’s tips.';
          q5Answer =
              '•	 Seeds germinate in the presence of water. Germination is the process of growth of plants from the seeds\n•	 During germination, the white structure that appears first develops into root.\n•	 The small hair-like outgrowths formed later are root hairs.\n•	 If seeds are kept moist for a few more days, another whitish structure emerges from the same point of the seed, which later develops into a shoot';
          q6Answer =
              '1. Why don’t pulses stored in containers in the kitchen at home germinate?\n2. Name the part of plant where seeds are located.\n3.	 Do seeds ever germinate on the mother plant? Give reasons for your answer.\n4.	 Do all plants produce seeds? Justify your answer with examples.\n5. What are the other methods by which plants can reproduce?';
          q7Answer =
              '•	 Repeat the above activity at home with different seed samples. Observe and report to the teacher after 2-3 days.\n•	 Sow 1-2 germinated seeds in soil or sand in a pot and water them daily. You will observe that seeds develop into a small plant which gradually increases in size. Make observations about the height of the plant each day. Also note down the number of days it takes to produce the first leaf. Draw a figure of the young plant with leaves and roots.';
        }
      }
    } else if (std == 8) {
      standard = 'VIII';
    }
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
