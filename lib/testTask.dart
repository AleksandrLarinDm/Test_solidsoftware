import 'dart:math';

import 'package:flutter/material.dart';

class TestTask extends StatefulWidget {
  @override
  _TestTaskState createState() => _TestTaskState();
}

class _TestTaskState extends State<TestTask> {
  Color _defaultColor = null;
  Random random = new Random();
  final String _greetingEn = "Hey there";
  final TextStyle _default = new TextStyle(color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.w100, decoration: TextDecoration.none);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          _defaultColor = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
        });
      },
      child: Container(
        color: _defaultColor,
        child: Center(
          child: Text(_greetingEn, style: _default),
        )
      ),
    );
  }
}
