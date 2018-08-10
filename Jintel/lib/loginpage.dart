import 'package:flutter/material.dart';
import 'package:jintel/registration.dart';

class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Jintel"),
      ),
      body: new Container(
        padding: EdgeInsets.all(10.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new ListTile(
                leading: const Icon(Icons.email),

                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Email",
                  ),
                ),
              ),
              new ListTile(
                //contentPadding: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0.0),
                leading: const Icon(Icons.lock),
                title: new TextField(
                  decoration: new InputDecoration(
                      hintText: 'Password'
                  ),
                  obscureText: true,
                )
              ),
              new Container (
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Container(
                      padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                      child: new RaisedButton(
                              color: Colors.red,
                              textColor: Colors.white,
                              onPressed: () => Navigator.of(context).pushNamed('/home'),
                              child: new Text('Login')
                            )
                    ),
                    new Container(
                      padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                      child: new RaisedButton(
                        color: Colors.red,
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(builder: (context) => new RegistrationPage()),
                          );
                        },
                        child: new Text('Sign Up/Forgot Password'),
                      )
                    )
                  ]
                )
              )
            ]
          ),
        )
    );
  }
}