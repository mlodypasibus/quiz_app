//widzet statyczny
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget{
  //tworzymy konstruktor normalnie jak przy StatelessWidget
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  //metoda nadpisujaca rozni sie od tej ktora mamy w Stateless
  //tworzymy w ten sposob instancje klasy ktora potem wykorzystujemy
  State<QuestionScreen> createState(){
    return _QuestionScreenState();
  }
}

//pamietamy ze przy tworzeniu tej klasy wykorzystujemy state wczesniej utworzony
//reszta tworzymy jak przy statycznej klasie
class _QuestionScreenState extends State<QuestionScreen>{
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;  
    });
  }

  @override
  Widget build(context){
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text(
          currentQuestion.text,
          style: GoogleFonts.lato(
            color:const Color.fromARGB(255, 233, 207, 248),
            fontSize: 24,
            fontWeight: FontWeight.bold 
          ),
            textAlign: TextAlign.center,
            ),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffekdAnswers().map((answer){
            return AnswerButton(
              answerText: answer, 
              onTap: (){
                answerQuestion(answer);
              }
              );
          })
          ],
          ),
      ),
    );
  }
}