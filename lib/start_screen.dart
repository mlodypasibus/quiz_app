import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget{
  //jesli chcemy przekazac argument mozemy to zrobic za pomoca
  //tego i nazwa jest calkowicie 
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(context){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        Image.asset(
        'assets/images/quiz-logo.png',
        width: 300,
        color: const Color.fromARGB(130, 255, 255, 255),
        ),
        const SizedBox(height: 40,),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.lato(
            fontSize: 28, 
            color: Colors.white,
            fontWeight: FontWeight.bold
            )
        ),
        const SizedBox(height: 20,),
        ElevatedButton.icon( 
          onPressed: startQuiz, 
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 176, 59, 248), 
            
            //padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20)
            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(0) )
          ),
          icon: const Icon(
            Icons.arrow_right_alt),
          label: const Text('Start Quiz',
          style: TextStyle(color: Colors.white, fontSize: 16,),  
          ), 
          )
      ])
    );
  }

}