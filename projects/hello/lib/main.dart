import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));



class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My first App"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            print("you fuck me!");
          },
          child: Text("fuck me plz"),
          color: Colors.lightGreenAccent,
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('hit me'),
        backgroundColor:  Colors.red[600],
      ),
    );
  }
}