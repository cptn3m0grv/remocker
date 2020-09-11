import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

class HomePageContent extends StatefulWidget{
  @override
  _HomePageContent createState() => _HomePageContent();
}

class _HomePageContent extends State<HomePageContent>{
  var userLogin;
  var userPassword;
  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Card(
              child: TextField(
                onChanged: (value) {
                  userLogin = value;
                },
                style: TextStyle(
                  fontSize: 20,
                ),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  fillColor: Color(0xffebefd0),
                  hintText: 'Email',
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
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Card(
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                obscuringCharacter: "*",
                obscureText: true,
                onChanged: (value) {
                  userPassword = value;
                },
                style: TextStyle(
                  fontSize: 20,
                ),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  fillColor: Color(0xffebefd0),
                  hintText: 'Password',
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
          ),
          SizedBox(
            height: 20,
          ),
          Material(
            color: Colors.white,
						borderRadius: BorderRadius.circular(10),
						elevation: 10,
            child: MaterialButton(
              minWidth: 180,
							height: 40,
              onPressed: () {
                print("Login");
              },
              child: Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                ),
              ),
            )
          ),
          SizedBox(
            height: 80,
          ),
          InkWell(
            child: Text(
              "Register / Sign Up",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontFamily: 'Ubuntu',
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/registerPage');
            },
          ),
        ],
      ),
    );
  }
}