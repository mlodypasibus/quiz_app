//widzet statyczny
import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget{
  //tworzymy konstruktor normalnie jak przy StatelessWidget
  const QuestionScreen({super.key});

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
  @override
  Widget build(context){
    final currentQuestion = questions[0];

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
          style: const TextStyle(
            color: Colors.white),
            textAlign: TextAlign.center,
            ),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffekdAnswers().map((item){
            return AnswerButton(answerText: item, onTap: () {});
          })
          ],
          ),
      ),
    );
  }
}