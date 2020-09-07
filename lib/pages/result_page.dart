import 'package:flutter/material.dart';
import '../constants.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Center(child: Text("Result page")),
      ),
      body: Text('result page'),
    );
  }
}
