import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:true_vocation_mobile/data/api/service/favorite_service.dart';
import 'package:true_vocation_mobile/data/api/service/profession_service.dart';
import 'package:true_vocation_mobile/data/api/service/university_service.dart';
import 'package:true_vocation_mobile/domain/model/favorites.dart';
import 'package:true_vocation_mobile/domain/model/professions.dart';
import 'package:true_vocation_mobile/domain/model/single_notifier.dart';
import 'package:true_vocation_mobile/domain/model/speciality.dart';
import 'package:true_vocation_mobile/domain/model/subjects.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';
import 'package:true_vocation_mobile/domain/model/user_info.dart';
import 'package:true_vocation_mobile/presentation/authorization/sign_in_page.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_icon_text_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_refresh_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_tabs_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/detail_page_template.dart';
import 'package:true_vocation_mobile/presentation/templates/details_description_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/constants.dart';
import 'package:true_vocation_mobile/utils/functions.dart';
import 'package:true_vocation_mobile/utils/icons.dart';

class AboutSpeciality extends StatefulWidget {
  const AboutSpeciality({Key? key, this.speciality, this.user})
      : super(key: key);

  final Speciality? speciality;
  final AppUser? user;

  @override
  State<AboutSpeciality> createState() => _AboutSpecialityState();
}

class _AboutSpecialityState extends State<AboutSpeciality> {
  List<Subjects> list = [
    Subjects(id: 1, name: ''),
    Subjects(id: 2, name: ''),
  ];

  late List<University> listUni = [];

  late List<Professions> listProf = [];

  bool loading = true;
  bool favorite = false;
  int page = 0;

  final RefreshController _refreshControllerUni =
      RefreshController(initialRefresh: false);

  final RefreshController _refreshControllerProf =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    _getDataUni();
    _getDataProf();
  }

  void _getDataUni() async {
    listUni = (await UniversityService().getUniversitiesBySpecialtyId(
            page, AppConstants.getListSize, widget.speciality!.id))
        .cast<University>();
    Future.delayed(const Duration(seconds: 1)).then(
      (value) => setState(
        () {
          loading = false;
        },
      ),
    );

    favorite = (await FavoriteService().checkFavoritesSpeciality(
      Favorites(
        specialty: widget.speciality,
        user: AppConstants.currentUser,
      ),
    ));
  }

  void _getDataProf() async {
    listProf = (await ProfessionService().getProfessionsBySpeciality(
            page, AppConstants.getListSize, widget.speciality!.id))
        .cast<Professions>();
    Future.delayed(const Duration(seconds: 1)).then(
      (value) => setState(
        () {
          loading = false;
        },
      ),
    );
  }

  void _onRefreshUni() async {
    page = 0;
    _getDataUni();
    _refreshControllerUni.refreshCompleted();
    _refreshControllerUni.loadComplete();
  }

  void _onLoadingUni() async {
    page++;
    List<University> newList = await UniversityService()
        .getUniversitiesBySpecialtyId(
            page, AppConstants.getListSize, widget.speciality!.id);
    listUni.addAll(newList);
    if (newList.isEmpty) {
      setState(() {
        _refreshControllerUni.loadNoData();
      });
    } else {
      setState(() {
        _refreshControllerUni.loadComplete();
      });
    }
  }

  void _onRefreshProf() async {
    page = 0;
    _getDataProf();
    _refreshControllerProf.refreshCompleted();
    _refreshControllerProf.loadComplete();
  }

  void _onLoadingProf() async {
    page++;
    List<Professions> newList = await ProfessionService()
        .getProfessionsBySpeciality(
            page, AppConstants.getListSize, widget.speciality!.id);
    listProf.addAll(newList);
    if (newList.isEmpty) {
      setState(() {
        _refreshControllerProf.loadNoData();
      });
    } else {
      setState(() {
        _refreshControllerProf.loadComplete();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var _singleNotifier = Provider.of<SingleNotifier>(context);

    return DetailPageTemplate(
      favorite: favorite,
      objectName: widget.speciality!.name,
      objectNameShort: widget.speciality!.name,
      appBarName: 'О специальности',
      appBarBody: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Трудоустройства:',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.greyColor,
                fontWeight: FontWeight.normal,
                fontSize: 14,
                fontFamily: 'Roboto'),
          ),
          CustomContainer(
            color: ApiFunctions.getColorEmployee(widget.speciality!.employment)
                .withOpacity(0.7),
            borderRadius: BorderRadius.circular(10),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Text(
                widget.speciality!.employment,
                style: TextStyle(
                    color: AppColors.whiteColor, fontWeight: FontWeight.normal),
              ),
            ),
          )
        ],
      ),
      iconPreset: AppIcons.spec,
      tabLength: 3,
      tabs: const [
        CustomTabs(name: 'Подробнее'),
        CustomTabs(name: 'Вузы'),
        CustomTabs(name: 'Профессии'),
      ],
      tabBarView: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppConstants.mainHorizontalPadding, vertical: 16),
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
                          text: widget.speciality!.description,
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
          controller: _refreshControllerUni,
          onRefresh: _onRefreshUni,
          onLoading: _onLoadingUni,
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
                    : ApiFunctions.getUni(listUni),
              ),
            ],
          ),
        ),
        RefreshTemplate(
          controller: _refreshControllerProf,
          onLoading: _onLoadingProf,
          onRefresh: _onRefreshProf,
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
                    : ApiFunctions.getProf(listProf),
              ),
            ],
          ),
        ),
      ],
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
            var res = (await FavoriteService().deleteFavoritesSpeciality(
              Favorites(
                user: _singleNotifier.currentUser,
                specialty: widget.speciality,
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
                specialty: widget.speciality,
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
        title: 'Мин. балл',
        value: widget.speciality!.minScoreGeneral.toString(),
        preset: AppIcons.down,
      ),
      const SizedBox(
        height: 16,
      ),
      Column(
        children: [
          CustomIconTextWidget(
            title: 'Кол. грантов',
            value: widget.speciality!.totalGrants.toString(),
            preset: AppIcons.grant,
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    ];
  }
}
