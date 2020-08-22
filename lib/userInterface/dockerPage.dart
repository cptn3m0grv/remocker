import 'dart:ui';

import 'package:flutter/material.dart';

String input;
String container;

class DockerHome extends StatefulWidget{
  @override
  _DockerHome createState() => _DockerHome();
}

class _DockerHome extends State<DockerHome>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 200,
              title: Text("Docker"),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset("assets/images/dockerHome.png"),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) => 
                Card(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.black,
                        ),
                        Text("Docker"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}