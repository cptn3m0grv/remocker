import 'dart:ui';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String input;
String container;

class DockerHome extends StatefulWidget{
  @override
  _DockerHome createState() => _DockerHome();
}

class _DockerHome extends State<DockerHome>{

  var inputFromUser;
  String outputOfCommand;
  String serverIP = "192.168.10.11";

  getOutput(String cmd) async{
    var url = 'http://$serverIP/cgi-bin/getDocker.py?q=$cmd';
    var response = await http.get(url);
    setState(() {
      var body = response.body;
      outputOfCommand = body;
    });
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff085F63),
        title: Text(
          "Docker Services",
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 25,
          ),
        )
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.9,
              color: Color(0xff32dbc6),
              child: Column(
                children: [
                  Card(
                    child: TextField(
                      onChanged: (value) {
                        inputFromUser = value;
                      },
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Color(0xffebefd0),
                        hintText: 'Enter Command',
                        hintStyle: TextStyle(
                          fontFamily: 'Ubuntu',
                        ),
                        prefixIcon: Icon(Icons.arrow_forward),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          )
                        ),
                        contentPadding: EdgeInsets.all(10),
                      ),
                    ),
                  ),
                  Text("    "),
                  FloatingActionButton.extended(
                    onPressed: () {
                      getOutput(inputFromUser);
                    },
                    backgroundColor: Color.fromARGB(200, 2, 20, 5),
                    label: Text(
                      "  Run  ",
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 20,
                      ),
                    ),
                    icon: Icon(Icons.directions_run),
                  ),
                  Text("   "),
                  DottedLine(
                    dashLength: 20,
                  ),
                  Text("   "),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Card(
                    child: Text(
                      "  Most Frequent Commands  ",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                  ),
                  Text(" "),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: FlatButton(
                            onPressed: null,
                            child: Text(
                              "Available Images",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Ubuntu',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: FlatButton(
                            onPressed: null,
                            child: Text(
                              "Active Processes",
                              style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: FlatButton(
                            onPressed: null,
                            child: Text(
                              "All Processes",
                              style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: FlatButton(
                            onPressed: null,
                            child: Text(
                              "Docker Version",
                              style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Output :",
                      style: TextStyle(
                        color: Colors.limeAccent[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: 'Ubuntu',
                      ),
                    )
                  ),
                  Text(" "),
                  RichText(
                    text: TextSpan(
                      text: outputOfCommand,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'ubuntu',
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}