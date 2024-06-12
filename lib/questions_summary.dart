import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/data/questions.dart';


class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary(this.summaryData, {super.key,});
  final List<Map<String, Object>> summaryData;

  

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 350,
      width: 350,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data){
            
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor:(data['correct_answer'] == data['user_answer']) 
                  ? const Color.fromARGB(255, 61, 187, 254)
                  : const Color.fromRGBO(252, 58, 190, 1) ,
                  radius: 15,
                  child: Text(((data['question_index'] as int ) + 1).toString(),
                  ),
                ),
                const SizedBox(width: 20,height: 70,),
                Expanded(
                  child: Column(children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(data['question'] as String,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    const SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(data['user_answer'] as String,
                      style: const TextStyle(
                        color: Color.fromRGBO(252, 58, 190, 1)
                      ),),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(data['correct_answer'] as String,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 61, 187, 254)
                      ),
                      ),
                    )
                  ],),
                ),
              ]
              );
          },
          ).toList(),
        ),
      ),
    );
    
  }
}