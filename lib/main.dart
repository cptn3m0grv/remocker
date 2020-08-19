import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
// import 'ui/ui.dart';
// import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

String input;
String container;

// void linux(String Command) async{

// }

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/' : (context) => HomePage(),
        '/basicCommands' : (context) => BasicCommands(),
        // '/commandsList' : (context) => CommandLists(),
        // '/runCommands' : (context) => ManualCommands(),
        '/dockerHome' : (context) => DockerHome(),
        '/dockerBasicFeature' : (context) => BasicFeature(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

// APPLICATION HOME PAGE

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Text("\n\n\n\n"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.cloud,
                        size: 50.0,
                        color: Colors.grey,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                        child: Text(
                          '     remocker',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Ubuntu',
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),  
                ),
              ],
            ),
            Text("\n\n\n"),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.navigate_next,
                    size: 50.0,
                    color: Colors.grey,
                  ),
                  Card(
                    color: Colors.grey,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/basicCommands');
                      },
                      child: Text(
                        '             Linux              ',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Ubuntu',
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.navigate_next,
                    size: 50.0,
                    color: Colors.grey,
                  ),
                  Card(
                    color: Colors.grey,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/dockerHome');
                      },
                      child: Text(
                        '             Docker           ',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Ubuntu',
                          fontStyle: FontStyle.normal,
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
      appBar: AppBar(
        title: Text(
          'Remocker',
          style: TextStyle(
            fontFamily: 'Ubuntu',
          ),
        ),
        backgroundColor: Color.fromARGB(250, 2, 20, 5),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(250, 0, 33, 5),
      ),
    );
  }
}

// LINUX COMMANDS HOME PAGE

class BasicCommands extends StatefulWidget{
  @override
  _BasicCommands createState() => _BasicCommands();
}

class _BasicCommands extends State<BasicCommands>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(250, 2, 20, 5),
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
              color: Colors.grey,
              child: Column(
                children: [
                  Card(
                    child: TextField(
                      onChanged: null,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
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
                    onPressed: null,
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
                  Row(
                    children: [
                      Card(
                        child: Text(
                          "   Date   ",
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 25,
                          ),
                        ),
                      )
                    ],
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

// class BasicCommands extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Linux Commands",
//           style: TextStyle(
//             fontFamily: 'Ubuntu',
//           ),
//         ),
//         backgroundColor: Color.fromARGB(250, 2, 20, 5),
//       ),
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         color: Color.fromARGB(250, 0, 33, 5),
//         child: Center(
//           child: Container(
//             padding: EdgeInsets.all(20),
//             color: Colors.grey,
//             width: 300,
//             height: 170,
//             child: Column(
//               children: <Widget>[
//                 Card(
//                   child: FlatButton(
//                     padding: EdgeInsets.all(20),
//                     onPressed: () {
//                       Navigator.pushNamed(context, '/commandsList');
//                     },
//                     child: Text(
//                       "Show Commands List",
//                       style: TextStyle(
//                         fontFamily: 'Ubuntu',
//                       ),
//                     ),
//                   ),
//                 ),
//                 Card(
//                   child: FlatButton(
//                     padding: EdgeInsets.all(20),
//                     onPressed: () {
//                       Navigator.pushNamed(context, '/runCommands');
//                     },
//                     child: Text(
//                       "Run Manual commands",
//                       style: TextStyle(
//                         fontFamily: 'Ubuntu',
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // LINUX COMMANDS LIST

// class CommandLists extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Commands List",
//           style: TextStyle(
//             fontFamily: 'Ubuntu',
//           ),
//         ),
//         backgroundColor: Color.fromARGB(250, 2, 20, 5),
//       ),
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         color: Color.fromARGB(250, 0, 33, 5),
//         child: Center(
//           child: Container(
//             color: Colors.grey,
//             width: 300,
//             height: 180,
//             child: Column(
//               children: <Widget>[
//                 Card(
//                   child: FlatButton(
//                     onPressed: () {
//                       print("Date");
//                     },
//                     child: Text("Date"),
//                   ),
//                 ),
//                 Card(
//                   child: FlatButton(
//                     onPressed: () {
//                       print("Calendar");
//                     },
//                     child: Text("Cal"),
//                   )
//                 ),
//                 Card(
//                   child: FlatButton(
//                     onPressed: () {
//                       print("List");
//                     },
//                     child: Text("List"),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // MANUAL LINUX COMMANDS

// class ManualCommands extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(250, 2, 20, 5),
//         title: Text(
//           'Run Manual Commands',
//           style: TextStyle(
//             fontFamily: 'Ubuntu',
//           ),
//         )
//       ),
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         color: Color.fromARGB(250, 0, 33, 5),
//         padding: EdgeInsets.all(30),
//         child: Center(
//           child: Container(
//             width: 300,
//             height: 170,
//             color: Colors.grey,
//             child: Column(
//               children: <Widget>[
//                 Card(
//                   child: TextField(
//                     onChanged: (value) {
//                       input = value;
//                     },
//                     style: TextStyle(
//                       fontSize: 20,
//                     ),
//                     autocorrect: false,
//                     cursorColor: Colors.black,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       contentPadding: EdgeInsets.all(20),
//                       hintText: "Command",
//                       prefixIcon: Icon(Icons.arrow_forward),
//                     ),
//                   ),
//                 ),
//                 Card(
//                   child: FlatButton(
//                     padding: EdgeInsets.all(20),
//                     onPressed: () {
//                       print("Hello " + input);
//                     },
//                     child: Text(
//                       'Run',
//                       style: TextStyle(
//                         fontFamily: 'Ubuntu',
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// DOCKER HOME PAGE  

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