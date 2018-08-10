import 'package:flutter/material.dart';

class MoodTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Health Tracker'),
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

  double _discreteValue = 20.0;
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
  test(){
    int i = 1;
    i++;
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: new Align(

        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: <Widget>[
            new Text(
              "How Do You Feel Today",
              textScaleFactor: 1.5,
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
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

