import 'package:flutter/material.dart';
import 'homePageContent.dart';

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
        backgroundColor: Color(0xff085F63),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xff49BEB7),
        child: HomePageContent(),
      ),
    );
  }
}