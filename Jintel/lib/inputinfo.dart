import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputInfo extends StatelessWidget {
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Health Information'),
       backgroundColor: Colors.red,
     ),
     body: new MyHomePage(),
   );
 }
}
class SecondSignUp extends StatelessWidget{
 @override
 Widget build(BuildContext context){
   return Scaffold(
       appBar: AppBar(
           title: Text("My Health"),
           backgroundColor: Colors.red,
       ),
       body: new Column(
         children: <Widget>[

         ],
       )

   );
 }
}

class MyHomePage extends StatefulWidget {
 MyHomePage({Key key}) : super(key: key);

 // This widget is the home page of your application. It is stateful, meaning
 // that it has a State object (defined below) that contains fields that affect
 // how it looks.

 // This class is the configuration for the state. It holds the values (in this
 // case the title) provided by the parent (in this case the App widget) and
 // used by the build method of the State. Fields in a Widget subclass are
 // always marked "final".

 @override
 _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 int _counter = 0;

 void _incrementCounter() {
   setState(() {
     // This call to setState tells the Flutter framework that something has
     // changed in this State, which causes it to rerun the build method below
     // so that the display can reflect the updated values. If we changed
     // _counter without calling setState(), then the build method would not be
     // called again, and so nothing would appear to happen.
     _counter++;
   });
 }

 @override
 Widget build(BuildContext context) {
   // This method is rerun every time setState is called, for instance as done
   // by the _incrementCounter method above.
   //
   // The Flutter framework has been optimized to make rerunning build methods
   // fast, so that you can just rebuild anything that needs updating rather
   // than having to individually change instances of widgets.
   return new Scaffold(
     body: new SafeArea(
         top: false,
         bottom: false,
         child: new Form(
           child: new ListView(
               children: <Widget>[
                 new TextFormField(
                   decoration: const InputDecoration(
                     icon: const Icon(Icons.person),
                     hintText: 'Please enter your full name',
                     labelText: 'Name',
                   ),
                 ),
                 new TextFormField(
                   decoration: const InputDecoration(
                     icon: const Icon(Icons.phone),
                     hintText: 'Enter a phone number',
                     labelText: 'Phone',
                   ),
                   keyboardType: TextInputType.phone,
                   inputFormatters: [
                     WhitelistingTextInputFormatter.digitsOnly,
                   ],
                 ),
                 new TextFormField(
                   decoration: const InputDecoration(
                     icon: const Icon(Icons.email),
                     hintText: 'Enter a email address',
                     labelText: 'Email',
                   ),
                   keyboardType: TextInputType.emailAddress,
                 ),
                 new TextFormField(
                   decoration: const InputDecoration(
                     icon: const Icon(Icons.calendar_today),
                     hintText: 'Enter your date of birth',
                     labelText: 'Dob',
                   ),
                   keyboardType: TextInputType.datetime,
                 ),
                 new TextFormField(
                   decoration: const InputDecoration(
                       icon: const Icon(Icons.add_photo_alternate),
                       hintText: "Enter Your SSN(Optional)"
                   ),
                 ),
                 new TextFormField(
                   decoration: const InputDecoration(
                       icon: const Icon(Icons.account_circle),
                       hintText: 'Please Enter a Username',
                       labelText: 'UN'
                   ),
                   keyboardType: TextInputType.text,
                 ),
               ]
           ),
         )

     ),
     floatingActionButton: new FloatingActionButton(
       onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => SecondSignUp()));
       },
       child: new Icon(Icons.navigate_next),
     ), // This trailing comma makes auto-formatting nicer for build methods.
   );
 }
}