import 'package:flutter/cupertino.dart';

class customtext extends StatelessWidget {
  final String text;
  final double fontsize;
 final Color color;
  customtext({ required this.text, required this.fontsize, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize:fontsize,color: color));
  }
}
