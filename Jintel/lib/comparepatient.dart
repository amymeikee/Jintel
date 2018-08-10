import 'package:flutter/material.dart';
import 'package:jintel/healthpage.dart';
import 'package:jintel/inputinfo.dart';
import 'package:jintel/heartratepage.dart';
import 'package:jintel/bloodpressurepage.dart';

class ComparePatient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Patient Comparison'),
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

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: new Align(

        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: <Widget>[
            new Text(
              "Compare Me to Other Patients In:",
              textScaleFactor: 1.5,
            ),

            new RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              disabledTextColor: Colors.white,
              disabledColor: Colors.red,
              padding: EdgeInsets.all(35.0),
              child: new Text("Calories"),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new HealthPage()),
                );
              },
            ),
            new RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              disabledTextColor: Colors.white,
              disabledColor: Colors.red,
              padding: EdgeInsets.all(35.0),
              child: new Text("Heart Rate"),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new HeartRate()),
                );
              },
            ),
            new RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              disabledTextColor: Colors.white,
              disabledColor: Colors.red,
              padding: EdgeInsets.all(35.0),
              child: new Text("Blood Pressure"),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new BloodPressure()),
                );
              },
            ),
            new RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              disabledTextColor: Colors.white,
              disabledColor: Colors.red,
              padding: EdgeInsets.all(35.0),
              child: new Text("Add Health Information"),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new InputInfo()),
                );
              },
            ),

          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

