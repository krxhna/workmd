import 'package:flutter/material.dart';
import 'todo.dart';
import 'main.dart';
import 'timer.dart';

// void main() => runApp(Home());


//Home

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
                          Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => todo()),
              );
            },
          ),
       
          body: Stack(
            
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 72,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          width: 50,
                          height: 20,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.amber, Colors.red])),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Home',
                        style: TextStyle(color: Colors.white54),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'To do ',
                        style: TextStyle(color: Colors.white54),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Timer',
                        style: TextStyle(color: Colors.white54),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'goals',
                        style: TextStyle(color: Colors.white54),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'calendar',
                        style: TextStyle(color: Colors.white54),
                      ),
                    ),
                  ],
                ),
                color: Color(0xff151b26),
                width: 240,
                height: double.infinity,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 240.0),
                  child: Container(
                    color: Color(0xfff6f8f9),
                    width: double.maxFinite,
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 250.0, top: 10),
                child: Row(
                  children: [
                    Container(
                      color: Colors.red,
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'krishnakanth',
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ],
                ),
              ),

              Align(
                  child: Text(
                '11:00',
                style: TextStyle(fontSize: 100, color: Colors.black),
              )),
            ],
          )),
    );
  }
}
