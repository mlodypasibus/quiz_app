import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/quiz.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({
    super.key, 
    required this.choosenAnswers
    });

  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    
    for(var i=0; i < choosenAnswers.length; i++){
        summary.add({
          'question_index':i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': choosenAnswers[i]
        },
        );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
      final summaryData = getSummaryData();
      final numTotalQuestions = questions.length;
      final numCorrectQuestions = summaryData.where((data){
        return data['user_answer'] == data['correct_answer'];
      }).length;

      return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('You answered $numCorrectQuestions out of $numTotalQuestions questions correctly',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color.fromARGB(197, 240, 216, 254),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            ),),
          const SizedBox(height: 30,),
          QuestionsSummary(summaryData),
          const SizedBox(height: 30,),
          ElevatedButton.icon(
            onPressed: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Quiz()),
              );
            }, 
            icon: const Icon(
              Icons.refresh
            ),
            label: const Text('Restart Text')),
        ],
        ),
      )
    );    
  }
}