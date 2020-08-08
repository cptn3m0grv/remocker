import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

String input;

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
        '/commandsList' : (context) => CommandLists(),
        '/runCommands' : (context) => ManualCommands(),
        '/dockerHome' : (context) => DockerHome(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

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
                Icon(
                  Icons.cloud,
                  size: 50.0,
                  color: Colors.grey,
                ),
                Text(
                  "     remocker",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Ubuntu',
                    fontStyle: FontStyle.italic,
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
        backgroundColor: Colors.deepPurple[900],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.deepPurple[700],
      ),
    );
  }
}

class BasicCommands extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Linux Commands",
          style: TextStyle(
            fontFamily: 'Ubuntu',
          ),
        ),
        backgroundColor: Colors.deepPurple[900],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.deepPurple[700],
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.grey,
            width: 300,
            height: 170,
            child: Column(
              children: <Widget>[
                Card(
                  child: FlatButton(
                    padding: EdgeInsets.all(20),
                    onPressed: () {
                      Navigator.pushNamed(context, '/commandsList');
                    },
                    child: Text(
                      "Show Commands List",
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                  ),
                ),
                Card(
                  child: FlatButton(
                    padding: EdgeInsets.all(20),
                    onPressed: () {
                      Navigator.pushNamed(context, '/runCommands');
                    },
                    child: Text(
                      "Run Manual commands",
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CommandLists extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Commands List",
          style: TextStyle(
            fontFamily: 'Ubuntu',
          ),
        ),
        backgroundColor: Colors.deepPurple[900],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.deepPurple[700],
        child: Center(
          child: Container(
            color: Colors.grey,
            width: 300,
            height: 180,
            child: Column(
              children: <Widget>[
                Card(
                  child: FlatButton(
                    onPressed: () {
                      print("Date");
                    },
                    child: Text("Date"),
                  ),
                ),
                Card(
                  child: FlatButton(
                    onPressed: () {
                      print("Calendar");
                    },
                    child: Text("Cal"),
                  )
                ),
                Card(
                  child: FlatButton(
                    onPressed: () {
                      print("List");
                    },
                    child: Text("List"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ManualCommands extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[900],
        title: Text(
          'Run Manual Commands',
          style: TextStyle(
            fontFamily: 'Ubuntu',
          ),
        )
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.deepPurple[700],
        padding: EdgeInsets.all(30),
        child: Center(
          child: Container(
            width: 300,
            height: 170,
            color: Colors.grey,
            child: Column(
              children: <Widget>[
                Card(
                  child: TextField(
                    onChanged: (value) {
                      input = value;
                    },
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    autocorrect: false,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(20),
                      hintText: "Command",
                      prefixIcon: Icon(Icons.arrow_forward),
                    ),
                  ),
                ),
                Card(
                  child: FlatButton(
                    padding: EdgeInsets.all(20),
                    onPressed: () {
                      print("Hello " + input);
                    },
                    child: Text(
                      'Run',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DockerHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[900],
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
        color: Colors.deepPurple[700],
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
                width: 300,
                height: 170,
                color: Colors.grey,
                child: Column(
                  children: <Widget>[
                    Text("List"),
                    Text("Gaurav"),
                    Text("Hello"),
                    Text("Grv"),
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