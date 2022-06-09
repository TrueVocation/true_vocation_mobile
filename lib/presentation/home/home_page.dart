import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:true_vocation_mobile/data/api/service/profession_service.dart';
import 'package:true_vocation_mobile/data/api/service/test_service.dart';
import 'package:true_vocation_mobile/domain/model/professions.dart';
import 'package:true_vocation_mobile/domain/model/single_notifier.dart';
import 'package:true_vocation_mobile/domain/model/user_info.dart';
import 'package:true_vocation_mobile/presentation/authorization/authorization_page.dart';
import 'package:true_vocation_mobile/presentation/professions/about_professions_page.dart';
import 'package:true_vocation_mobile/presentation/professions/profession_main_page.dart';
import 'package:true_vocation_mobile/presentation/speciality/speciality_main_page.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_button.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_container_button_tabbar_view.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/presentation/test/preview.dart';
import 'package:true_vocation_mobile/presentation/test/test_result_page.dart';
import 'package:true_vocation_mobile/presentation/university/university_main_page.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/constants.dart';
import 'package:true_vocation_mobile/utils/icons.dart';
import 'package:true_vocation_mobile/utils/routes.dart';
import 'package:true_vocation_mobile/utils/shadows.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Professions> listProf = [];
  bool loading = true;
  bool loadingTest = false;
  int page = 0;

  @override
  void initState() {
    super.initState();
    _getData();
  }
  void _getData() async {
    listProf = (await ProfessionService()
            .getProfessions(page, AppConstants.getListSize))
        .cast<Professions>();
    Future.delayed(const Duration(seconds: 1)).then(
      (value) => setState(
        () {
          loading = false;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double cardHeight = 120;
    double cardWight = 164;
    double iconSize = 52;
    var _singleNotifier = Provider.of<SingleNotifier>(context);
    AppUser user = _singleNotifier.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: appBar(
          user.user?.firstName ?? 'Unauthorized',
          context,
          user,
        ),
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        bottomOpacity: 0,
        toolbarHeight: 128,
        automaticallyImplyLeading: false,
      ),
      body: CustomPageScroll(
        color: AppColors.whiteColor,
        physics: const ClampingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppConstants.mainHorizontalPadding, vertical: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainUniversityPage()),
                        );
                      },
                      child: CustomContainer(
                        height: cardHeight,
                        width: cardWight,
                        color: AppColors.blueColor,
                        shadowColor: getShadowColor(AppColors.blueColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomSvgIcon(
                                    size: iconSize,
                                    preset: AppIcons.cardIcon,
                                    color:
                                        AppColors.whiteColor.withOpacity(0.5),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Universities',
                                    style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: getDarkColor(),
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(36),
                                          bottomLeft: Radius.circular(36),
                                          topRight: Radius.circular(19),
                                          bottomRight: Radius.circular(19))),
                                  height: double.maxFinite,
                                  width: 64,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: CustomSvgIcon(
                                      size: 36,
                                      preset: AppIcons.uni,
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainSpecialityPage()),
                        );
                      },
                      child: CustomContainer(
                        height: cardHeight,
                        width: cardWight,
                        color: AppColors.yellowColor,
                        shadowColor: getShadowColor(AppColors.yellowColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomSvgIcon(
                                    size: iconSize,
                                    preset: AppIcons.cardIcon,
                                    color:
                                        AppColors.whiteColor.withOpacity(0.5),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Specialities',
                                    style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: getDarkColor(),
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(36),
                                          bottomLeft: Radius.circular(36),
                                          topRight: Radius.circular(19),
                                          bottomRight: Radius.circular(19))),
                                  height: double.maxFinite,
                                  width: 64,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: CustomSvgIcon(
                                      size: 36,
                                      preset: AppIcons.spec,
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainProfessionPage()),
                        );
                      },
                      child: CustomContainer(
                        height: cardHeight,
                        width: cardWight,
                        color: AppColors.redColor,
                        shadowColor: getShadowColor(AppColors.redColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomSvgIcon(
                                    size: iconSize,
                                    preset: AppIcons.cardIcon,
                                    color:
                                        AppColors.whiteColor.withOpacity(0.5),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Professions',
                                    style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: getDarkColor(),
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(36),
                                          bottomLeft: Radius.circular(36),
                                          topRight: Radius.circular(19),
                                          bottomRight: Radius.circular(19))),
                                  height: double.maxFinite,
                                  width: 64,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: CustomSvgIcon(
                                      size: 36,
                                      preset: AppIcons.prof,
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainUniversityPage()),
                        );
                      },
                      child: CustomContainer(
                        height: cardHeight,
                        width: cardWight,
                        shadowColor: getShadowColor(AppColors.greyColor),
                        color: AppColors.greyColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomSvgIcon(
                                    size: iconSize,
                                    preset: AppIcons.cardIcon,
                                    color:
                                        AppColors.whiteColor.withOpacity(0.5),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'FAQ',
                                    style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: getDarkColor(),
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(36),
                                          bottomLeft: Radius.circular(36),
                                          topRight: Radius.circular(19),
                                          bottomRight: Radius.circular(19))),
                                  height: double.maxFinite,
                                  width: 64,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: CustomSvgIcon(
                                      size: 36,
                                      preset: AppIcons.faq,
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomContainer(
                  color: AppColors.purple,
                  shadowColor: getShadowColor(AppColors.purple),
                  borderRadius: BorderRadius.circular(20),
                  width: double.maxFinite,
                  height: 128,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                getText('What do you want'),
                                const SizedBox(
                                  height: 2,
                                ),
                                getText('to know your'),
                                const SizedBox(
                                  height: 2,
                                ),
                                getText('interesting?')
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomButton(
                                  onPressed: () async {
                                    if (AppConstants.currentUser.id != null){
                                      setState(() {
                                        loadingTest = true;
                                      });
                                      var res = (await TestService().checkTestResult(AppConstants.currentUser.id));
                                      setState(() {
                                        loadingTest = false;
                                      });
                                      if (res) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const PreviewTestPage()),
                                        );
                                      } else {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const TestResultPage()),
                                        );
                                      }
                                    }
                                    else {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const AuthorizationPage()),
                                      );
                                    }
                                  },
                                  borderColor: AppColors.whiteColor,
                                  color: AppColors.whiteColor,
                                  radius: 10,
                                  text: 'Get started',
                                  textColor: AppColors.purple,
                                  loadingColor: AppColors.purple,
                                  loading: loadingTest,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: CustomSvgIcon(
                          size: double.maxFinite,
                          preset: AppIcons.vector,
                          color: AppColors.whiteColor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomContainer(
            color: AppColors.backgroundColor.withOpacity(0.3),
            shadowColor: AppShadows.color.withOpacity(0.1),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            width: double.maxFinite,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 12, sigmaX: 12),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppConstants.mainHorizontalPadding,
                    vertical: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Profession of the',
                              style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'future',
                              style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const MainProfessionPage()),
                            );
                          },
                          child: Text(
                            'See all',
                            style: AppConstants.textButtonStyle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    loading == true
                        ? const Center(child: CircularProgressIndicator())
                        : getProf(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getProf() {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: listProf.length ~/ 2,
      separatorBuilder: (_, index) => const SizedBox(
        height: 8,
      ),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AboutProfession(
                profession: listProf[index],
              ),
            ),
          );
        },
        child: CustomContainerButtonTabbarView(
          function: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutProfession(
                  profession: listProf[index],
                ),
              ),
            );
          },
          child: Text(
            listProf[index].name,
            style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }

  Text getText(String text) {
    return Text(
      text,
      style: TextStyle(
          color: AppColors.whiteColor,
          fontSize: 18,
          fontWeight: FontWeight.w500),
    );
  }

  Color getDarkColor() {
    return AppColors.blackColor.withOpacity(0.2);
  }

  Color getShadowColor(Color color) {
    return color.withOpacity(0.6);
  }

  Widget appBar(String name, BuildContext context, AppUser user) {
    var _singleNotifier = Provider.of<SingleNotifier>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello,',
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              name,
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(
          width: 64,
          height: 64,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            child: GestureDetector(
              onTap: () {
                if (user.id == null){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AuthorizationPage()),
                  );
                } else {
                  Widget okButton = TextButton(
                    child: const Text("Да"),
                    onPressed: () {
                      _singleNotifier.updateUser(const AppUser());
                      Navigator.of(context, rootNavigator: true)
                          .pushReplacementNamed(AppRoutes.mainPage);
                    },
                  );
                  AlertDialog alert = AlertDialog(
                    content: const Text("Выйти из аккаунта?"),
                    actions: [
                      okButton,
                    ],
                  );
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert;
                    },
                  );
                }
              },
              child: user.user?.imageUrl != null
                  ? Image(
                      image: NetworkImage(
                          user.user!.imageUrl!),
                    )
                  : CustomSvgIcon(
                      preset: AppIcons.login,
                      color: AppColors.blackColor,
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
