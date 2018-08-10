import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class DoctorReview extends StatelessWidget {
  const DoctorReview();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Doctor Review'),
       backgroundColor: Colors.red,
     ),
     body: new MyHomePage(),
   );
  }
}

class Doctor {
  const Doctor({this.name, this.description, this.age, this.imageUrl});

  final String name;
  final String description;
  final int age;
  final String imageUrl;
}
final String server =
defaultTargetPlatform == TargetPlatform.android ? "10.0.2.2" : "localhost";
final List<Doctor> _doctors = <Doctor>[
  Doctor(
      name: 'Bob Stevens',
      description: 'Graduated from Stanford with a PhD in oncology',
      age: 26,
      imageUrl: ''),
  Doctor(
      name: 'Chiang Lee',
      description: 'Graduated from Stanford with a PhD in spinal optometry',
      age: 26,
      imageUrl: ''),
  Doctor(
      name: 'Guy Sanders',
      description: 'Graduated from Stanford with a PhD in oncology',
      age: 26,
      imageUrl: ''),
  Doctor(
      name: 'Marly Stevens',
      description: 'Graduated from Stanford with a PhD in oncology',
      age: 26,
      imageUrl: ''),
];

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  Widget _dialogBuilder(BuildContext context, Doctor doctor) {
    ThemeData localTheme = Theme.of(context);

    return SimpleDialog(
      contentPadding: EdgeInsets.zero,
      children: [
        Image.network(
          doctor.imageUrl,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(doctor.name, style: localTheme.textTheme.display1),
              Text(
                '${doctor.age} months old',
                style: localTheme.textTheme.subhead.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                doctor.description,
                style: localTheme.textTheme.body1,
              ),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerRight,
                child: Wrap(
                  children: [
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Do not Rate'),
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RatingScreen()),
                        );
                      },
                      child: const Text('Rate'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _listItemBuilder(BuildContext context, int index) {
    return new GestureDetector(
      onTap: () => showDialog(
          context: context,
          builder: (context) => _dialogBuilder(context, _doctors[index])),
      child: Container(
        padding: const EdgeInsets.only(left: 16.0),
        alignment: Alignment.centerLeft,
        child: Text(_doctors[index].name,
            style: Theme.of(context).textTheme.headline),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _doctors.length,
        itemExtent: 60.0,
        itemBuilder: _listItemBuilder,
      ),
    );
  }
}

class RatingScreen extends StatelessWidget {
  int _rating = 0;

  void rate(int rating) {
    //Other actions based on rating such as api calls.
    setState(() {
      _rating = rating;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My Rating"),
        backgroundColor: Colors.red,
      ),
      body: new Center(
        child: new Container(
          width: 500.0,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new GestureDetector(
                child: new Icon(
                  Icons.star,
                  color: _rating >= 1 ? Colors.orange : Colors.grey,
                ),
                onTap: () => rate(1),
              ),
              new GestureDetector(
                child: new Icon(
                  Icons.star,
                  color: _rating >= 2 ? Colors.orange : Colors.grey,
                ),
                onTap: () => rate(2),
              ),
              new GestureDetector(
                child: new Icon(
                  Icons.star,
                  color: _rating >= 3 ? Colors.orange : Colors.grey,
                ),
                onTap: () => rate(3),
              ),
              new GestureDetector(
                child: new Icon(
                  Icons.star,
                  color: _rating >= 4 ? Colors.orange : Colors.grey,
                ),
                onTap: () => rate(4),
              ),
              new GestureDetector(
                child: new Icon(
                  Icons.star,
                  color: _rating >= 5 ? Colors.orange : Colors.grey,
                ),
                onTap: () => rate(5),
              )
            ],
          ),
        ),
      ),
    );
  }

  void setState(Function param0) {}
}

