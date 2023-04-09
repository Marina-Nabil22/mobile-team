import 'package:flutter/material.dart';
class Content extends StatefulWidget {

  Content({Key? key,required this.text}) : super(key: key);
  String text;

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      height: 100,
      width: 350,
      color: Colors.white,
      child: Text(widget.text),
    );
  }
}
