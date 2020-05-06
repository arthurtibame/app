import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  
  void getData() {
    // 模擬使用者在使用
    Future.delayed(Duration(seconds: 3), () {
      print("Future Delayed 3");
    });
    print("statement");

  }

  @override
  void initState(){
    super.initState();
    getData();
  }
  
  
  @override
  Widget build(BuildContext context) {
    print('biuld function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose a location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text("HI choose loaction page")
    );
  }
}