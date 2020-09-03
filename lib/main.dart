import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.red),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  var textEditingControllerEmail;
  var textEditingControllerPassword;

  @override
  void initState() {
    textEditingControllerEmail = TextEditingController();
    textEditingControllerPassword = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            children: [
              Text(
                'CodePlayon',
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 25.0),
                    child: TextField(
                      controller: textEditingControllerEmail,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25.0),
                    child: TextField(
                      controller: textEditingControllerEmail,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25.0),
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25.0),
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text('Login'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
