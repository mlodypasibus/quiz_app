//ma zawierac material app
//widzet statyczny
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
//import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  
  void switchScreen(){
    setState(() {
      activeScreen = 'question-screen';
    });
  } 

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context){
    Widget screenWidget = StartScreen(switchScreen);
    if(activeScreen == 'question-screen'){
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer
        );
    }
    
    if(activeScreen == 'result-screen'){
      screenWidget = ResultScreen(
        choosenAnswers: selectedAnswers,
      );
    }

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
      child: screenWidget, 
      ),
    ),
    );
  }
}
