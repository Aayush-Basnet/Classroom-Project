import 'package:_classroom/homepage.dart';
import 'package:flutter/material.dart';

TextStyle MyStyle = TextStyle(fontSize: 18);

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

var username;
var password;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final usernamefield = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      style: MyStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: 'username',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
          )),
    );
    final passwordfield = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: MyStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: 'password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
          )),
    );
    final MyLoginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(18),
      color: Colors.blue.shade300,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(15),
        onPressed: () {
          if (username == "aayush" && password == "12345") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage(username)),
            );
          } else {
            print("Incorrecrt password or username");
          }
        },
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Icon(
                      Icons.supervised_user_circle_outlined,
                      size: 120,
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    usernamefield,
                    SizedBox(
                      height: 20,
                    ),
                    passwordfield,
                    SizedBox(
                      height: 30,
                    ),
                    MyLoginButton,
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
