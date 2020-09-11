import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class RegisterPage extends StatefulWidget{
  @override
  _RegisterPage createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage>{
  var userRegister;
  String registerPass;
  bool showSpin = false;
  String passError = "  ";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register",
          style: TextStyle(
            fontFamily: 'Ubuntu',
          ),
        ),
        backgroundColor: Color(0xff085F63),
      ),      
      body: ModalProgressHUD(
          inAsyncCall: showSpin,
          child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xff49BEB7),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Card(
                    child: TextField(
                      onChanged: (value) {
                        userRegister = value;
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
                        registerPass = value;
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
                Text(
                  passError,
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'Ubuntu',
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
                      if(registerPass.length < 8){
                        setState(() {                          
                          passError = "Password must be at least 8 characters";
                        });
                      }else{
                        setState(() {
                          passError = "";
                          showSpin = true;
                        });
                      }
                      print("Register");
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}