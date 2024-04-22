import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key});
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
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(fontSize: 28, color: Colors.white)
        ),
        const SizedBox(height: 20,),
        ElevatedButton.icon( 
          onPressed: () {}, 
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