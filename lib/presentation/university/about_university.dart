import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:true_vocation_mobile/data/api/service/favorite_service.dart';
import 'package:true_vocation_mobile/data/api/service/speciality_service.dart';
import 'package:true_vocation_mobile/domain/model/favorites.dart';
import 'package:true_vocation_mobile/domain/model/single_notifier.dart';
import 'package:true_vocation_mobile/domain/model/speciality.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';
import 'package:true_vocation_mobile/domain/model/user_info.dart';
import 'package:true_vocation_mobile/presentation/authorization/sign_in_page.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_icon_text_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_refresh_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_tabs_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/detail_page_template.dart';
import 'package:true_vocation_mobile/presentation/templates/details_description_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/constants.dart';
import 'package:true_vocation_mobile/utils/functions.dart';
import 'package:true_vocation_mobile/utils/icons.dart';

class AboutUniversity extends StatefulWidget {
  const AboutUniversity({Key? key, this.university, this.user})
      : super(key: key);
  final University? university;
  final AppUser? user;

  @override
  State<AboutUniversity> createState() => _AboutUniversityState();
}

class _AboutUniversityState extends State<AboutUniversity> {
  late List<Speciality> list = [];

  bool loading = true;
  bool favorite = false;
  int page = 0;
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    list = (await SpecialityService().getSpecialitiesByUniversity(
            page, AppConstants.getListSize, widget.university!.id))
        .cast<Speciality>();
    Future.delayed(const Duration(seconds: 1)).then(
      (value) => setState(
        () {
          loading = false;
        },
      ),
    );

    favorite = (await FavoriteService().checkFavoritesUniversity(
      Favorites(
        university: widget.university,
        user: AppConstants.currentUser,
      ),
    ));
  }

  void _onRefresh() async {
    page = 0;
    _getData();
    _refreshController.refreshCompleted();
    _refreshController.loadComplete();
  }

  void _onLoading() async {
    page++;
    List<Speciality> newList = await SpecialityService()
        .getSpecialitiesByUniversity(
            page, AppConstants.getListSize, widget.university!.id);
    list.addAll(newList);
    if (newList.isEmpty) {
      setState(() {
        _refreshController.loadNoData();
      });
    } else {
      setState(() {
        _refreshController.loadComplete();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var _singleNotifier = Provider.of<SingleNotifier>(context);

    return DetailPageTemplate(
      university: widget.university,
      objectName: widget.university!.name,
      fontSize: 18,
      objectNameShort: widget.university!.address,
      fontSizeShort: 14,
      appBarName: 'О ВУЗе',
      iconPreset: AppIcons.uni,
      tabLength: 2,
      tabs: const [
        CustomTabs(name: 'Подробнее'),
        CustomTabs(name: 'Специальности'),
      ],
      tabBarView: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppConstants.mainHorizontalPadding, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Описание',
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: CustomPageScroll(
                      color: AppColors.whiteColor,
                      children: [
                        DetailsDescriptionWidget(
                          text: widget.university!.description,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: AppConstants.mainHorizontalPadding),
                      child: CustomPageScroll(
                        children: getOtherInfo(),
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        RefreshTemplate(
          controller: _refreshController,
          onLoading: _onLoading,
          onRefresh: _onRefresh,
          child: CustomPageScroll(
            color: AppColors.whiteColor,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppConstants.mainHorizontalPadding,
                    vertical: 16),
                child: loading == true
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ApiFunctions.getSpec(list),
              ),
            ],
          ),
        ),
      ],
      appBarBody: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          getIcon(AppIcons.location),
          getIcon(AppIcons.call),
        ],
      ),
      favorite: favorite,
      onPressed: () async {
        if (_singleNotifier.currentUser.id == null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignInPage(),
            ),
          );
        } else {
          if (favorite) {
            var res = (await FavoriteService().deleteFavoritesUniversity(
              Favorites(
                user: _singleNotifier.currentUser,
                university: widget.university,
              ),
            ));
            if (res.code == 200) {
              setState(() {
                favorite = false;
              });
            }
          } else {
            var res = (await FavoriteService().createFavorite(
              Favorites(
                user: _singleNotifier.currentUser,
                university: widget.university,
              ),
            ));
            if (res.code == 200) {
              setState(() {
                favorite = true;
              });
            }
          }
        }
      },
    );
  }

  List<Widget> getOtherInfo() {
    return [
      CustomIconTextWidget(
        title: 'Специальности',
        preset: AppIcons.spec,
        value: widget.university!.specialityCount.toString(),
      ),
      const SizedBox(
        height: 16,
      ),
      if (widget.university!.military)
        Column(
          children: [
            CustomIconTextWidget(
              title: 'Воен. кафедра',
              preset: AppIcons.military,
              value: 'Есть',
            ),
            const SizedBox(
              height: 16,
            )
          ],
        ),
      if (widget.university!.dormitory)
        Column(
          children: [
            CustomIconTextWidget(
              title: 'Общежитие',
              preset: AppIcons.dormitory,
              value: 'Есть',
            ),
            const SizedBox(
              height: 16,
            )
          ],
        ),
    ];
  }

  Widget getIcon(icon) {
    return CustomContainer(
      borderRadius: BorderRadius.circular(100),
      color: AppColors.purple,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CustomSvgIcon(
          preset: icon,
          color: AppColors.whiteColor,
          size: 24,
        ),
      ),
    );
  }
}
