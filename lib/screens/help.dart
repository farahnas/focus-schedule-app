import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class help extends StatefulWidget {
  const help({super.key});

  @override
  State<help> createState() => _helpState();
}

class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
         backgroundColor: Color.fromARGB(255, 249, 240, 229),
        body: Column(
          children: [
            Text("         How use this App?          \n                1)Press in buttom Subject Info.          \n                2)Enter name of subject.          \n                3)Choose credit of this subject.          \n                4)press in buttom Done.          \n                5)Schedule appear in your screen.          \n         We wish that infarmation help you. ",style: TextStyle(color: Color.fromARGB(255, 97, 63, 30),fontSize: 30,fontFamily: "Courgette-Regular"),),
          ],
        ),
      ),
    );
  }
}