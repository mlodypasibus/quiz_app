//widzet statyczny
import 'package:flutter/material.dart';

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
    return const Text('Questions Screen');
  }
}