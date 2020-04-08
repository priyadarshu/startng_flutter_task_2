


import 'package:flutter/material.dart';
import 'package:startng_flutter_task_2/signuppage.dart';
import 'package:startng_flutter_task_2/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context)=>LoginPage(),
    SignUpPage.tag:(context)=>SignUpPage(),
    HomePage.tag:(context)=>HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoginPage',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito'
      ),
      home: LoginPage(),
     // home: SignUpPage(),
      routes: routes,
          );
  }
}

class LoginPage extends StatefulWidget {
  static String tag ='tag-p';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    
    final logo =Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
         child:Image.asset('assets/butterfly.png'),
      ),
    );

    final email =TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'priya@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          ),
      ),

    );

    final password =TextFormField(
      
      autofocus: false,
      initialValue: 'some password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          ),
      ),

    );


    final LoginButton=Padding(
      padding: EdgeInsets.symmetric(vertical:16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: (){
              Navigator.of(context).pushNamed(HomePage.tag);
          },
          color:Colors.lightBlueAccent,
          child: Text('Log In', style :TextStyle(color: Colors.white),),

    ),
        ),
    );

    final SignUpButton=Padding(
      padding: EdgeInsets.symmetric(vertical:19.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: (){
            Navigator.of(context).pushNamed(SignUpPage.tag);
          },
          color:Colors.lightBlueAccent,
          child: Text('SignUp', style :TextStyle(color: Colors.white),),

    ),
        ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left:24.0, right:24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0,),
            email,
            SizedBox(height: 8.0,),
            password,
            SizedBox(height: 24.0,),
            LoginButton,
            SignUpButton,

          ],


        ),
        
        ),

    );
    
  }
}