import 'package:flutter/material.dart';
import 'todo.dart';
import 'Home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: todo(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
        ),
      ),
    );
  }
}

class Second extends StatefulWidget {
  Second({Key key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  TextEditingController todoController = TextEditingController();
  TextEditingController msgcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('second'),
        ),
        body: Center(
          child: TextField(
            controller: todoController,
          ),
        ),
      ),
    );
  }
}
