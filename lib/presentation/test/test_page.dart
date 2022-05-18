import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/domain/model/questions.dart';
import 'package:true_vocation_mobile/presentation/templates/appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class MainTestPage extends StatefulWidget {
  const MainTestPage({Key? key}) : super(key: key);

  @override
  State<MainTestPage> createState() => _MainTestPageState();
}

class _MainTestPageState extends State<MainTestPage> {
  List<Questions> questions = [];

  var map = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        color: AppColors.backgroundColor,
        leading: true,
        name: 'Тест',
      ),
      body: CustomPageScroll(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 4),
              leading: Icon(Icons.info_outline, color: AppColors.greyColor,),
              title: Text(
                'Вам предлагается продолжить 24 фразы, выбирая из трёх вариантов ответов в каждом. Закончите утверждение, выбрав наиболее подходящий именно для Вас ответ. Отвечайте максимально честно, не пытаясь подстроиться под желания окружающих, т.к. от этого напрямую зависит достоверность результата.',
                style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          getQuestions(questions),
        ],
      ),
    );
  }

  Widget getQuestions(List<Questions> questions) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: questions.length,
      itemBuilder: (BuildContext context, int index) {
        final question = questions[index];
        return Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                question.question,
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.normal
                ),
                textAlign: TextAlign.center,
              ),
            ),
            //getAnswers(question.answers, index),
          ],
        );
      },
    );
  }

  Widget getAnswers(List<Answer> answers, int questionIndex){
    return CustomContainer(
      margin: const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 24),
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 8),
            shrinkWrap: true,
            itemCount: answers.length,
            itemBuilder: (BuildContext context, int answerIndex) {
              final answer = answers[answerIndex];
              return Column(
                children: [
                  _buildItem(answer.answer, answerIndex, questionIndex)
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildItem(String answer, answerIndex, questionIndex) {
    return RadioListTile<int>(
      title: Text(
        answer,
        style: TextStyle(
            color: map[questionIndex] != answerIndex ?  AppColors.blackColor : AppColors.blueColor,
            fontSize: 14,
            fontWeight: FontWeight.normal
        ),
      ),
      activeColor: AppColors.blueColor,
      value: answerIndex,
      groupValue: map[questionIndex],
      onChanged: (value) {
        setState(() {
          map[questionIndex] = value;
          answerIndex = map[questionIndex];
          if (kDebugMode) {
            print("after map : $map");
          }
        });
      },
    );
  }
}
