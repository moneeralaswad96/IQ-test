import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List question;
  final int indexQuestion;
  final Function answerQuestion;

  const Quiz(this.question, this.indexQuestion, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[indexQuestion]['questiontext']),
        ...(question[indexQuestion]['answers'] as List<
                Map<String,
                    Object>>) //النقاط ... من اجل جعل الدالة بمستوى الابناء
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['title']);
        }).toList(), // مررنا مجموع الاجوبة والنصوص من خلال دلال Answer
      ],
    );
  }
}
