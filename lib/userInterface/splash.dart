import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'homePage.dart';

class MySplash extends StatefulWidget {
  @override
  _MySplash createState() => new _MySplash();
}

class _MySplash extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: HomePage(),
      title: Text(
        'Remocker',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          fontFamily: 'Ubuntu',
        ),
      ),
      image: Image.asset('assets/images/splash.png'),
      backgroundColor: Color(0xff49BEB7),
      styleTextUnderTheLoader: TextStyle(),
      photoSize: 100.0,
      onClick: (){
        Navigator.pushNamed(context, '/');
      },
      loaderColor: Colors.red,
    );
  }
}