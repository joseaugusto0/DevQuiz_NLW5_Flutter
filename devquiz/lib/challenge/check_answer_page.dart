import 'dart:convert';
import 'dart:io';
import 'package:DevQuiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CheckAnswerPage extends StatelessWidget {
  
  final bool isRight;

  const CheckAnswerPage({Key? key, this.isRight=false}) : super(key: key);
  
  String get _rightAnswer =>
    isRight ? 'https://media.giphy.com/media/Bf95AKD22INLKgnvz1/giphy.gif' : 'https://media.giphy.com/media/hPPx8yk3Bmqys/giphy.gif';
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(_rightAnswer))
              ),

            ),
            NextButtonWidget.green(label: "Confirmar",onTap: () { }),
          ],
        ),
      ),
    );
  }
}