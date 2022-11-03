import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class test extends StatelessWidget {
  final String text1;
  test({ required this.text1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(

          child: Text(text1),
        ),
      ),
    );
  }
}
