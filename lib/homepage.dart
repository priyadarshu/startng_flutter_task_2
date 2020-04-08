import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  static String tag ='homepage';
  @override
  Widget build(BuildContext context) {
    final alucards = Hero(
      tag:'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/wolf.jpg'),

        ),

      ),
    );

    final homePage= Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'This is the Home Page',
        style: TextStyle(fontSize:28.0, color: Colors.white),
      ),

    );
    final login= Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome to the Jungle',
        style: TextStyle(fontSize:28.0, color: Colors.white),
      ),

    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding:EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.green,
          Colors.greenAccent,
          ],
          ),
      ),
    child: Column(children: <Widget>[
      alucards,homePage,login
    ],),
    
    );
  return Scaffold(
    body:body,
  );




  }
}