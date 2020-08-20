import 'package:flutter/material.dart';

String input;
String container;

class DockerHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(250, 2, 20, 5),
        title: Text(
          "Docker Home",
          style: TextStyle(
            fontFamily: 'Ubuntu',
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(250, 0, 33, 5),
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                width: 220,
                height: 150,
                child: Card(
                  child: Image.asset(
                    'assets/images/dockerHome.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                width: 300,
                height: 170,
                color: Colors.grey,
                child: Column(
                  children: <Widget>[
                    Card(
                      child: FlatButton(
                        padding: EdgeInsets.all(20),
                        onPressed: () {
                          Navigator.pushNamed(context, '/dockerBasicFeature');
                        },
                        child: Text(
                          "    Basic Features    ",
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: FlatButton(
                        padding: EdgeInsets.all(20),
                        onPressed: null,
                        child: Text(
                          "Advance Features",
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Basic features include the following options
//   -->Availaible images, Active ps, All  ps , IP of a particular container by name, Remove an image, Remove a process 

class BasicFeature extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(250, 2, 20, 5),
        title: Text(
          "Basic Features",
          style: TextStyle(
            fontFamily: 'Ubuntu',
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(250, 0, 33, 5),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.grey,
                width: 350,
                height: 540,
                child: Column(
                 children: <Widget>[
                   Row(
                     children: <Widget>[
                       Card(
                         margin: EdgeInsets.all(10),
                         child: FlatButton(
                           onPressed: null,
                           child: Text(
                             "  Docker Version  ",
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontFamily: 'Ubuntu',
                             ),
                            ),
                         ),
                       ),
                       Card(
                         margin: EdgeInsets.all(10),
                         child: FlatButton(
                           onPressed: null,
                           child: Text(
                             "  Available Images  ",
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontFamily: 'Ubuntu',
                             )
                            ),
                         ),
                       ),
                     ],
                   ),
                   Row(
                     children: <Widget>[
                       Card(
                         margin: EdgeInsets.all(10),
                         child: FlatButton(
                           onPressed: null,
                           child: Text(
                             " Active Processes",
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontFamily: 'Ubuntu',
                             ),
                            ),
                         ),
                       ),
                       Card(
                         margin: EdgeInsets.all(10),
                         child: FlatButton(
                           onPressed: null,
                           child: Text(
                             "      All Processes     ",
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontFamily: 'Ubuntu',
                             )
                            ),
                         ),
                       ),
                     ],
                   ),
                   Text("\n"),
                   Text(
                     '- - - - - - - - - -',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       fontFamily: 'Ubuntu',
                     ),
                    ),
                   Text("\n"),
                   Card(
                     margin: EdgeInsets.only(
                       left: 20,
                       right: 20,
                     ),
                     child: TextField(
                      onChanged: (value) {
                        container = value;
                      },
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      autocorrect: false,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(20),
                        hintText: "Container Name",
                        prefixIcon: Icon(Icons.arrow_forward),
                      ),
                     ),
                   ),
                 ],  
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}