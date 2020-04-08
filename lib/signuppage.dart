

import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  static String tag ='signuppage';

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
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

    final signup= Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'This is the SignUp Page',
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
          colors: [Colors.blue,
          Colors.lightBlueAccent,
          ],
          ),
      ),
    child: Column(children: <Widget>[
      alucard,signup,login
    ],),
    
    );
  return Scaffold(
    body:body,
  );

    
  }
}