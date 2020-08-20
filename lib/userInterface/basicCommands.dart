import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class BasicCommands extends StatefulWidget{
  @override
  _BasicCommands createState() => _BasicCommands();
}

class _BasicCommands extends State<BasicCommands>{

  String inp;
  String out;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff085F63),
        title: Text(
          "Terminal",
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 25,
          )
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Color(0xff32dbc6),
              child: Column(
                children: [
                  Card(
                    child: TextField(
                      onChanged: (value) {
                        inp = value;
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
                      setState(() {
                        out = inp;
                      });
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
                      "  Most Common Commands  ",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                  ),
                  Text(" "),
                  Row(
                    children: [
                      Card(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              out = "date";
                            });
                          },
                          child: Text(
                            "   Date   ",
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              out = "calendar";
                            });
                          },
                          child: Text(
                            "   Cal   ",
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              out = "process list";
                            });
                          },
                          child: Text(
                            "   Ps   ",
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text("  "),
                  DottedLine(
                    dashLength: 20,
                  ),
                  Text(" "),
                  RichText(
                    text: TextSpan(
                      text: "Output",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: 'Ubuntu',
                      ),
                    )
                  ),
                  Text(" "),
                  RichText(
                    text: TextSpan(
                      text: "$out",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'ubuntu',
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                      )
                    )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}