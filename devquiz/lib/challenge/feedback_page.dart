import 'package:DevQuiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  final bool isRight;
  final String title;

  const FeedbackPage({Key? key, this.isRight=false, required this.title}) : super(key: key);

  Color get _selectedRightBorder => 
    isRight ? AppColors.darkGreen : AppColors.darkRed;

  IconData get _selectedRightIcon => 
    isRight ? Icons.check : Icons.close;

  String get _selectedRightText =>
    isRight ? "Acertou!" : "Errou :/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(500),
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: _selectedRightBorder,
                        width: 5))),
                  child: Icon(_selectedRightIcon,color: _selectedRightBorder, size: 60,),
                ),
                SizedBox(height: 55),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 59),
                  child: Column(
                    children: [
                      Text(_selectedRightText, style: AppTextStyles.heading40,),
                      SizedBox(height: 16,),
                      Text(
                        title, 
                        style: AppTextStyles.body,
                        textAlign: TextAlign.center,
                      ),
                    ]
                  ),
                ),
              ],
            ),

            Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 96),
                          child: NextButtonWidget.purple(label: "Avançar", onTap: () {
                            Navigator.pop(context);
                          }),
                        ),
                      ),
                    ],
                  )),
                  SizedBox(height: 150)
              ],
            )
            
        ],)
      ),
      
    );
  }
}