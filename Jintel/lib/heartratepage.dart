import 'package:flutter/material.dart';
import 'package:jintel/calorieschart.dart' as charts;

class HeartRate extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Heart Rate Comparison"),
        backgroundColor: Colors.red,
      ),
      body: new Container(
        child: new charts.DashPatternLineChart.withSampleData(),
      ),
    );
  }
}