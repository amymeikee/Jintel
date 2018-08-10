import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';
import 'package:jintel/calendarpage.dart';

class RemindersPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Create A Reminder"),
      ),
      body: new Container(
        padding: EdgeInsets.all(10.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
             new Container(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.only(top:30.0,left: 10.0, right: 20.0),
                      child: new TextField (
                          decoration: new InputDecoration(
                              hintText: 'Input Reminder'
                          )
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(top:20.0, left: 10.0, right: 20.0),
                      child: new TextField (
                        decoration: new InputDecoration(
                          hintText: 'Time'
                        )
                      ),
                    ),
                    new Container (
                      padding: EdgeInsets.only(top: 30.0),
                      child: new Center(
                        child: new RaisedButton(
                          child: new Text("Create Reminder", style: new TextStyle(color: Colors.white)),
                          color: Colors.red,
                          onPressed: () => Navigator.pushNamed(context, '/home')
                        )
                      ),
                    ),
                    new Container (
                        padding: EdgeInsets.only(top: 30.0),
                        child: new Center(
                            child: new RaisedButton(
                                child: new Text("Need A Calender?", style: new TextStyle(color: Colors.white)),
                                color: Colors.red,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(builder: (context) => new CalendarPage()),
                                );
                              },
                            )
                        )
                    )
                  ]
                )
              )
            ]
        )
      )
    );
  }
}