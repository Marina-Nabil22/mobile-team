// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:untitled/componate/content.dart';

List <Widget>l=[Content(text: 'Marina',score: 570,),Content(text: 'Yousef',score: 570,),Content(text: 'Abdelrahman',score: 570,)];
List <String>Trans=['English','Arabic'];
List<bool>li=[false];
 Color x=Colors.white;
class HomeScreem extends StatefulWidget {
  const HomeScreem({Key? key}) : super(key: key);

  @override
  State<HomeScreem> createState() => _HomeScreemState();
}

class _HomeScreemState extends State<HomeScreem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor:const Color.fromARGB(255, 2, 50, 90),
      body:  Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/cover.jpg',
          ),
          fit: BoxFit.fill
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(alignment: Alignment.topCenter,
              margin: const EdgeInsets.only(top: 50,left: 40),
              child: const Text('Simple leader board for mobile commetiy members',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
            ),
            SizedBox(height: 20,),
               Row(mainAxisAlignment: MainAxisAlignment.center,
                children:   [
                ToggleButtons(
                  constraints:   const BoxConstraints(
                    minHeight: 50.0,
                    minWidth: 100.0,
                  ),
                  borderWidth: 7,
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(10),right: Radius.circular(10)),
                selectedBorderColor: Colors.deepPurple,
                  selectedColor: Colors.white,
                  fillColor: Colors.red[200],
                  color: Colors.red[400],
                  direction: Axis.vertical,
                  children:[
                 const Text('Translation',
                 style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                 ),
                 )
                 ,
                ] , isSelected: li,
                  onPressed: (index){
                    setState(() {
                      if(li[index]==false){
                l=[Content(text:'مارينا',score: 570,),Content(text: 'يوسف',score: 570,),Content(text: 'عبد الرحمن',score: 570,)];
                li[index]=true;
                      }
                      else {
                        l=[Content(text: 'Marina',score: 570,),Content(text: 'Yousef',score: 570,),Content(text: 'Abdelrahman',score: 570,)];
                        li[index]=false;
                      }
                    });
                  },
                )
              ]
              ),
            Container(
              alignment: Alignment.topCenter,
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                 for(int i=0;i<l.length;i++)
                 l[i],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
