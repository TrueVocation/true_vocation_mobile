import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/templates/modal_bottom_sheet_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class NewsBlockTemplate extends StatelessWidget {
  const NewsBlockTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          context: context,
          builder: (BuildContext context) {
            return CustomModalBottomSheet(
              children: <Widget>[
                const Icon(
                  Icons.horizontal_rule_rounded,
                  size: 48,
                ),
                const Text(
                  'Правительство выделило 20 000 грантов на научно-технические направления',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto'),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 24),
                      child: const Text(
                        '''
                        Президент Казахстана Нурсултан Назарбаев пообещал студентам выделить ещё 20 тысяч грантов и решить проблему с общежитиями в ближайшие годы.
                        "Третья инициатива – повышение доступности и качества высшего образования и улучшение условий проживания студенческой молодёжи. Сегодня в вузах страны обучается более 530 тысяч молодых людей, из них почти 30% по грантам, выделяемых государством", – сказал Нурсултан Назарбаев на совместном заседании палат Парламента.
                        Для повышения доступа и качества высшего образования он предложил следующие меры: в 2018-2019 годах выделить дополнительно ещё 20 тысяч грантов к 54 тысячам, выделяемым ежегодно.
                        "Из них 11 тысяч, а если необходимо, и больше, на обучение бакалавров по техническим специальностям, то есть туда, где есть спрос для новой экономики, индустриальной программы, которую проводим. Это позволит подготовить тысячи и тысячи специалистов, которые будут востребованы в новой экономике в условиях четвёртой промышленной революции. Речь идёт прежде всего об инженерах, специалистах в области информационных технологий, робототехники и нанотехнологий. Это тоже забота государства о нашей молодёжи", – пояснил глава государства.
                        По мнению Президента, необходимо повысить стоимость новых грантов во всех вузах по техническим и сельскохозяйственным специальностям до уровня грантов национальных вузов. Он также обратил внимание на условия обучения и проживания студентов.
                        "Мне известно, что многие иногородние страдают, снимая в ветхих помещениях на окраинах городов углы, чтобы переночевать. Конечно, о качественном образовании и обучении речь не может идти. Сегодня остро стоит вопрос обеспечения студентов вузов и колледжей общежитиями. Для решения этой задачи надо развернуть работу по строительству общежитий вузами, колледжами и девелоперскими компаниями на принципах государственно-частного партнёрства. Государство со своей стороны через Министерство образования и науки будет гарантировать постепенное возмещение части инвестиций, направленных на строительство общежитий", – заявил он.
                        Президент поручил до конца 2022 года обеспечить строительство новых студенческих общежитий не менее чем на 75 тысяч мест. Это позволит полностью решить проблему с местами на ближайшие годы.
                        ''',
                        style: TextStyle(fontSize: 12, fontFamily: 'Roboto'),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image(
                image: NetworkImage(
                    'https://media.istockphoto.com/photos/female-student-picture-id1264296727?b=1&k=20&m=1264296727&s=170667a&w=0&h=uGwjyDSjSqIsq9jCwnCHpQDtnDkNIU3Jjoq8cTN8Pss='),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: ListTile(
              title: Text(
                'Правительство выделило 20 000 грантов на научно-технические направления',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  color: AppColors.blackColor,
                ),
              ),
              subtitle: Container(
                margin: const EdgeInsets.only(top: 8, bottom: 8),
                child: Text(
                  '14:34',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    color: AppColors.greyColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
