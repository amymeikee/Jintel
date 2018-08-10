import 'package:flutter/material.dart';
import 'package:jintel/homepage.dart';
import 'package:jintel/healthpage.dart';
import 'package:jintel/settingspage.dart';
import 'package:jintel/doctorreview.dart';
import 'package:jintel/inputinfo.dart';
import 'package:jintel/calendarpage.dart';
import 'package:jintel/contactpage.dart';
import 'package:jintel/reminderspage.dart';
import 'package:jintel/moodtracker.dart';
import 'package:jintel/comparepatient.dart';
import 'package:jintel/chatmain.dart';
import 'package:jintel/loginpage.dart';
import 'package:jintel/dailyhealthquestions.dart';

void main() => runApp(new JintelApp());

class JintelApp extends StatelessWidget {
  final String title;
  JintelApp({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Jintel',
      theme: new ThemeData(
        primarySwatch: Colors.red
      ),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new HomePage(),
        '/health': (BuildContext context) => new HealthPage(),
        '/inputinfo': (BuildContext context) => new InputInfo(),
        '/doctorreview': (BuildContext context) => new DoctorReview(),
        '/chatmain': (BuildContext context) => new ChatMain(),
        '/moodtracker': (BuildContext context) => new MoodTracker(),
        '/dailyhealthquestions': (BuildContext context) => new DailyHealthQuestions(),
        '/comparepatient': (BuildContext context) => new ComparePatient(),
        '/settings': (BuildContext context) => new SettingsPage(),
        '/login': (BuildContext context) => new LoginPage(),
        '/contact': (BuildContext context) => new ContactPage(),
        '/calendar': (BuildContext context) => new CalendarPage(),
        '/reminders': (BuildContext context) => new RemindersPage()
      },
      home: new LoginPage()
    );
  }
}