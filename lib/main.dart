import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Task 2",
      home: Scaffold(
          resizeToAvoidBottomPadding: false,
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[
              Container(
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      fontSize: 20),
                ),
              ),
              Container(
                constraints: BoxConstraints.expand(
                  height:170,
                ),
                child: Image.asset(
                  "assests/admin.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25),
                  )
              ),
              Form(
                  child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: TextFormField (
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email Address',
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                          child: TextFormField (
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true ,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: FlatButton(
                              onPressed: () {},
                              textColor: Colors.grey,
                              child: Text('Forgot Password'),
                            ),
                          ),
                        ),
                        MaterialButton(
                          height: 40.0,
                          minWidth: 100.0,
                          onPressed: () {},
                          color: Colors.amberAccent,
                          textColor: Colors.black,
                          splashColor: Colors.greenAccent,
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Text('Don\'t have an account?'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: FlatButton(
                                    textColor: Colors.lightBlue,
                                    child: Text(
                                      'Sign up here',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            )
                        ),
                      ]
                  )
              ),

            ],
          )

      ),
    );
  }
}
