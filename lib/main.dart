import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'userInterface/homePage.dart';
import 'userInterface/basicCommands.dart';
import 'userInterface/dockerPage.dart';
import 'userInterface/splash.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: '/splashScreen',
      routes: <String, WidgetBuilder>{
        '/' : (context) => HomePage(),
        '/basicCommands' : (context) => BasicCommands(),
        '/dockerHome' : (context) => DockerHome(),
        '/splashScreen' : (context) => MySplash(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}