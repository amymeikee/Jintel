import 'package:flutter/material.dart';
import 'package:jintel/calorieschart.dart' as charts;

class BloodPressure extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Blood Pressure Comparison"),
        backgroundColor: Colors.red,
      ),
      body: new Container(
        child: new charts.DashPatternLineChart.withSampleData(),
      ),
    );
  }
}