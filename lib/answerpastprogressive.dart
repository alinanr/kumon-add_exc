import 'package:flutter/material.dart';

class AnswerPastProg extends StatelessWidget {
  final String? answerText;
  final Color? answerColor;
  final Function? answerTap;
  AnswerPastProg({this.answerText, this.answerColor, this.answerTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: answerTap as void Function()?,
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        width: 200,
        decoration: BoxDecoration(
            color: answerColor,
            border: Border.all(color: Colors.deepOrange[200]!, width: 10),
            borderRadius: BorderRadius.circular(25)),
        child: Text(
          answerText!, textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, fontFamily: "Roboto", fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
