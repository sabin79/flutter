import 'package:flutter/material.dart';
import 'package:loginapp/screen/homecsree.dart';

TextStyle mystyle =
    TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.purple);

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  late String username;
  late String password;

  @override
  Widget build(BuildContext context) {
    final usernamefield = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.purple, fontSize: 17),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        hintText: "UserName",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );

    final passwordfield = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 120, 30, 136),
          fontSize: 17),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        hintText: "password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
    final myloginbutton = Material(
      elevation: 7.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        onPressed: () {},
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(27),
        onLongPress: () {
          if (username == "SD" && password == "qwerty1234") {
            Navigator.push(context,
                MaterialPageRoute(builder: (conterxt) => HomeScreen(username)));
          } else {
            print("login failed");
          }
        },
        child: Text(
          'login',
          style: TextStyle(color: Colors.white, fontSize: 27),
        ),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(27),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.supervised_user_circle,
                    size: 130,
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  usernamefield,
                  SizedBox(
                    height: 1,
                  ),
                  passwordfield,
                  SizedBox(
                    height: 10,
                  ),
                  myloginbutton,
                ]),
          ),
        ),
      ),
    );
  }
}
