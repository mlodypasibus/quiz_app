//ma zawierac material app
//widzet statyczny

import 'package:flutter/material.dart';
//import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/gradient_container.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 144, 14, 237),
            Color.fromARGB(255, 184, 142, 235)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          ),
      ),
      child: const GradientContainer(), 
      ),
    ),
    );
  }
}
