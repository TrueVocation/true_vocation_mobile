import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/data/api/service/test_service.dart';
import 'package:true_vocation_mobile/domain/model/answers.dart';
import 'package:true_vocation_mobile/domain/model/answers_user.dart';
import 'package:true_vocation_mobile/domain/model/questions.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_button.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/constants.dart';

class MainTestPage extends StatefulWidget {
  const MainTestPage({Key? key}) : super(key: key);

  @override
  State<MainTestPage> createState() => _MainTestPageState();
}

class _MainTestPageState extends State<MainTestPage> {
  late List<Questions> questions = [];
  bool loading = true;
  bool loadingButton = false;
  CarouselController buttonCarouselController = CarouselController();
  int pageViewCarousel = 0;
  late int initialPageViewCarousel;
  double value = 0;
  int count = 0;
  late double constant;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    questions = (await TestService().getAllQuestions(1)).cast<Questions>();
    count = questions.length;
    Future.delayed(const Duration(seconds: 1)).then(
      (value) => setState(
        () {
          constant = 1 / questions.length-1;
          loading = false;
        },
      ),
    );
  }

  List<AnswersUser> answersUser = [];
  var map = {};

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
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
            margin: const EdgeInsets.only(
                left: AppConstants.mainHorizontalPadding,
                right: AppConstants.mainHorizontalPadding,
                bottom: 16),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 4),
              leading: Icon(
                Icons.info_outline,
                color: AppColors.greyColor,
              ),
              title: Text(
                'Вам предлагается продолжить $count фразы, выбирая из трёх вариантов ответов в каждом. Закончите утверждение, выбрав наиболее подходящий именно для Вас ответ. Отвечайте максимально честно, не пытаясь подстроиться под желания окружающих, т.к. от этого напрямую зависит достоверность результата.',
                style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppConstants.mainHorizontalPadding, vertical: 16),
            child: LinearProgressIndicator(
              value: value,
              color: AppColors.blueColor,
              backgroundColor: AppColors.blueColor.withOpacity(0.3),
            ),
          ),
          loading == true
              ? const Center(child: CircularProgressIndicator())
              : getQuestions(questions, height),
        ],
      ),
    );
  }

  Widget getQuestions(List<Questions> questions, height) {
    return CarouselSlider.builder(
      carouselController: buttonCarouselController,
      itemCount: questions.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppConstants.mainHorizontalPadding),
            child: Text(
              questions[itemIndex].question,
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          ),
          getAnswers(questions[itemIndex].answers, itemIndex, pageViewIndex),
          Wrap(
            spacing: 48,
            children: [
              if (pageViewIndex == questions.length - 1)
                CustomButton(
                  onPressed: () async {
                    setState(() {
                      loading = true;
                    });
                    var res =
                        (await TestService().saveUserAnswers(answersUser));
                    if (res.code == 200) {
                      setState(() {
                        loading = false;
                      });
                    } else {
                      setState(() {
                        loading = false;
                      });
                    }
                  },
                  borderColor: AppColors.blueColor,
                  color: AppColors.blueColor,
                  radius: 10,
                  loading: loadingButton,
                  text: 'Отправить',
                ),
            ],
          ),
        ],
      ),
      options: CarouselOptions(
        height: 500,
        viewportFraction: 0.8,
        enableInfiniteScroll: false,
        onPageChanged: (index, reason) {
          setState(() {
            value = constant * index;
            pageViewCarousel = index;
          });
        },
      ),
    );
  }

  Widget getAnswers(List<Answers> answers, int questionIndex, pageViewIndex) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.mainHorizontalPadding, vertical: 16),
      child: CustomContainer(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(vertical: 8),
              shrinkWrap: true,
              itemCount: answers.length,
              itemBuilder: (BuildContext context, int answerIndex) {
                return Column(
                  children: [
                    _buildItem(answers[answerIndex], answerIndex, questionIndex)
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem(Answers answer, answerIndex, questionIndex) {
    return RadioListTile<int>(
      title: Text(
        answer.answer,
        style: TextStyle(
            color: map[questionIndex] != answerIndex
                ? AppColors.blackColor
                : AppColors.blueColor,
            fontSize: 14,
            fontWeight: FontWeight.normal),
      ),
      activeColor: AppColors.blueColor,
      value: answerIndex,
      groupValue: map[questionIndex],
      onChanged: (value) {
        buttonCarouselController.nextPage(
            duration: const Duration(milliseconds: 300), curve: Curves.linear);
        setState(() {
          answersUser.add(
            AnswersUser(
                answer: answer,
                question: questions[questionIndex],
                appUser: AppConstants.currentUser),
          );
          map[questionIndex] = value;
          answerIndex = map[questionIndex];
        });
      },
    );
  }
}
