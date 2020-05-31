import 'package:flutter/material.dart';
import 'package:turing/Widgets/simulator.dart';
import 'package:turing/Widgets/standard_and_theme_details.dart';
import 'package:turing/Widgets/theory.dart';
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Theory',
                    style: kTabBarText,
                  ),
                ),
                Tab(
                  child: Text(
                    'Simulator',
                    style: kTabBarText,
                  ),
                ),
                Tab(
                  child: Text(
                    'Video',
                    style: kTabBarText,
                  ),
                )
              ],
              indicatorColor: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          body: TabBarView(
            children: <Widget>[
              Theory(
                standard: standard,
                q1Answer: q1Answer,
                q2Answer: q2Answer,
                q3Answer: q3Answer,
                q4Answer: q4Answer,
                q5Answer: q5Answer,
                q6Answer: q6Answer,
                q7Answer: q7Answer,
                activityName: activityName,
              ),
              Simulator(
                theme: theme,
                std: std,
              ),
              Container(
                child: Center(
                  child: Text('Video Page'),
                ),
              )
            ],
          )),
    );
  }
}
