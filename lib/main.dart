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
              child: Card(
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/basicCommands');
                  },
                  child: Text('Linux'),
                ),
              ),
            )
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
        title: Text("Linux Commands"),
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
            height: 300,
            child: Column(
              children: <Widget>[
                Card(
                  child: TextField(
                    onChanged: (value) => {
                      input = value
                    },
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(20),
                      prefixIcon: Icon(Icons.arrow_forward),
                    ),
                  ),
                ),
                Card(
                  child: FlatButton(
                    onPressed: () {
                      print("Welcome " + input);
                    },
                    child: Text('Run')
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