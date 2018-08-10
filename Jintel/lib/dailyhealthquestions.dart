import 'package:flutter/material.dart';

class DailyHealthQuestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Daily Health Questions'),
       backgroundColor: Colors.red,
     ),
     body: new MyHomePage(),
   );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double _discreteValue = 50.0;
  String label(){
    String a = "NULL";
    if(_discreteValue == 0.0){
      return "Terrible";
    }else if(_discreteValue == 25.0){
      return "Not Well";
    }else if(_discreteValue == 50.0){
      return "Ok";
    }else if(_discreteValue == 75.0) {
      return "Good";
    }else if(_discreteValue == 100.0){
      return "Excellent";
    }
    return a;
  }

  double _timeValue = 50.0;

  String timeLabel(){
    String a = "NULL";
    if(_timeValue == 0.0){
      return "12";
    }
    else if(_timeValue > 0 && _timeValue <= 8.33){
      return "1";
    }
    else if(_timeValue > 8.33 && _timeValue <= 16.66){
      return "2";
    }
    else if(_timeValue > 16.66 && _timeValue <= 24.99) {
      return "3";
    }
    else if(_timeValue > 24.99 && _timeValue <= 33.32) {
      return "4";
    }
    else if(_timeValue > 33.32 && _timeValue <= 41.65) {
      return "5";
    }
    else if(_timeValue > 41.65 && _timeValue <= 49.98) {
      return "6";
    }
    else if(_timeValue > 49.98 && _timeValue <= 58.31) {
      return "7";
    }
    else if(_timeValue > 58.31 && _timeValue <= 66.64) {
      return "8";
    }
    else if(_timeValue > 66.64 && _timeValue <= 74.97) {
      return "9";
    }
    else if(_timeValue > 74.97 && _timeValue <= 83.3) {
      return "10";
    }
    else if(_timeValue > 83.3 && _timeValue <= 91.63) {
      return "11";
    }
    else if(_timeValue > 91.63 && _timeValue <= 100.0) {
      return "12";
    }
    return a;
  }


  test(){
    int i = 1;
    i++;
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: new Container(
        margin: EdgeInsets.only(top: 70.0),
        child: new Column(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: new Text(
                "Have you taken your medication?",
                textScaleFactor: 1.5,
              )
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: new RaisedButton(
                    child: new Text('Yes'),
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () => null,
                  )
                ),
                new Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: new RaisedButton(
                    child: new Text('No'),
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () => null,
                  )
                )
              ],
            ),
            new Container(
              margin: EdgeInsets.only(top: 100.0),
              child: new Text(
                "What time of day is it?",
                textScaleFactor: 1.5,
              )
            ),
            new Column(
              children: <Widget>[
                new Slider(
                  value: _timeValue,
                  min: 0.0,
                  max: 100.0,
                  divisions: 14,
                  label: timeLabel(),
                  onChanged: (double value){
                    setState(() {
                      _timeValue = value;
                    });
                  },
                ),
              ],
            ),
            new Container(
              margin: EdgeInsets.only(top: 100.0),
              child: new Text(
                "How do you feel?",
                textScaleFactor: 1.5,
              )
            ),
            new Column(

              children: <Widget>[
                new Slider(
                  value: _discreteValue,
                  min: 0.0,
                  max: 100.0,
                  divisions: 4,
                  label: label(),
                  onChanged: (double value){
                    setState(() {
                      _discreteValue = value;
                    });
                  },
                ),
              ],
            ),
            new Container (
                padding: EdgeInsets.only(top: 30.0),
                child: new Center(
                    child: new RaisedButton(
                      child: new Text("Submit Questionaire", style: new TextStyle(color: Colors.white)),
                      color: Colors.red,
                      onPressed: () => null
                    )
                )
            )
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

