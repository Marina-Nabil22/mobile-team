import 'package:flutter/material.dart';
import 'package:untitled/componate/content.dart';

class HomeScreem extends StatefulWidget {
  const HomeScreem({Key? key}) : super(key: key);

  @override
  State<HomeScreem> createState() => _HomeScreemState();
}

class _HomeScreemState extends State<HomeScreem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
      body: Container(
        child: Column(
          children: [
            Content(text: "ascml",),
          ],
        ),
      ),
    );
  }
}
