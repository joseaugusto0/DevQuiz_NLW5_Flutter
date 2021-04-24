import 'package:DevQuiz/challenge/feedback_page.dart';
import 'package:flutter/material.dart';
import 'package:DevQuiz/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/models/question_model.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final ValueChanged<bool> onSelected;

  QuizWidget({
    Key? key,
    required this.question,
    required this.onSelected,
  }) : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;
  String rightText = "";

  answers(int index) => widget.question.answers[index];
  String answerTitle(int index) => widget.question.answers[index].title;
  
  @override
  void initState() {
    super.initState();
    rightText = widget.question.getRightAnswer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SizedBox(height: 64),
        Text(widget.question.title, style: AppTextStyles.heading,),
        SizedBox(height: 24,),

        
        for(var i = 0; i < widget.question.answers.length; i++)
          AnswerWidget(
            answer: answers(i),
            disabled: indexSelected != -1,
            isSelected: indexSelected == i,
            onTap: (value){
              indexSelected = i;
              setState(() {});
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => FeedbackPage(isRight: value, title: rightText,)));
              Future.delayed(Duration(seconds: 1)).then((_) => widget.onSelected(value));
              
            }
          )
        
        
        
      ],)
    );
  }
}