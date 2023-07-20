import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:godreign/utils/widget_extensions/widget_extenions.dart';
import 'package:godreign/widgets/buttons/play_button.dart';
import 'package:godreign/widgets/other/matches_card.dart';
import '../../../data/values/images.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        bottomSheet: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.commonButton,
          unselectedItemColor: AppColors.white,
          elevation: 2,
          backgroundColor: AppColors.godsPrimaryGradient,
          currentIndex: controller.menuItem.value,
          onTap: (index) {
            controller.onTabChange(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Images.home,
                color: AppColors.white,
              ),
              label: "Home",
              activeIcon: SvgPicture.asset(
                Images.home,
                color: AppColors.commonButton,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Images.event,
                color: AppColors.white,
              ),
              label: "Event",
              activeIcon: SvgPicture.asset(
                Images.event,
                color: AppColors.commonButton,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Images.grt,
                color: AppColors.white,
              ),
              label: "GR TV",
              activeIcon: SvgPicture.asset(
                Images.grt,
                color: AppColors.commonButton,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Images.shop,
                color: AppColors.white,
              ),
              label: "Shop",
              activeIcon: SvgPicture.asset(
                Images.shop,
                color: AppColors.commonButton,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Images.profile,
                color: AppColors.white,
              ),
              label: "Profile",
              activeIcon: SvgPicture.asset(
                Images.profile,
                color: AppColors.commonButton,
              ),
            ),
          ],
        ),
        backgroundColor: AppColors.godsPrimaryGradient,
        body: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black,
                          Colors.black26,
                          Colors.transparent
                        ],
                      ),
                    ),
                    child: CarouselSlider(
                      items: [
                        Image.asset(Images.cover),
                        Image.asset(Images.cover),
                        Image.asset(Images.cover),
                      ],
                      //Slider Container properties
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height * .50,
                        autoPlay: false,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        viewportFraction: 1,
                        // onPageChanged: (index,reason){
                        //   controller.index.value=index+1;
                        //   debugPrint('${ controller.index.value}');
                        // },
                      ),
                    ),
                  ),
                  Text(controller.titles[controller.index.value],
                      style: Styles.tsSb16.copyWith(color: AppColors.white)),
                  10.hb,
                  Text(
                    controller.subTitle[controller.index.value],
                    style: Styles.tsSb14.copyWith(color: Colors.white24),
                  ),
                  10.hb,
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Latest Matches',
                              style: Styles.tsSb16
                                  .copyWith(color: AppColors.white),
                            ),
                            Text('View All',
                                style: Styles.tsM14
                                    .copyWith(color: AppColors.white))
                          ],
                        ),
                        10.hb,
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .36,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.separated(
                            itemBuilder: (context, index) {
                              return MatchesCard(() {},
                                  gameType: 'VALORANT',
                                  date: 'Friday, October 22nd',
                                  score: '2 : 0',
                                  title:
                                      'Valorant india invitational by Galaxy Racer',
                                  subTitle: 'India Qualifier #2: Group B',
                                  rating: '5');
                            },
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Divider(
                                  color: AppColors.black,
                                  thickness: 1,
                                ),
                              );
                            },
                          ),
                        ),
                        20.hb,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Latest Shows',
                              style: Styles.tsSb16
                                  .copyWith(color: AppColors.white),
                            ),
                            Text('View All',
                                style: Styles.tsM14
                                    .copyWith(color: AppColors.white))
                          ],
                        ),
                        10.hb,
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .32,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.separated(
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.asset(
                                      Images.icPentaProSeries,
                                      fit: BoxFit.scaleDown,
                                      scale: 1.4,
                                    ),
                                  ),
                                  6.hb,
                                  Text('Taiwan Tour',
                                      style: Styles.tsSb14
                                          .copyWith(color: AppColors.white)),
                                  6.hb,
                                  Text(
                                    '95.1k Viewers',
                                    style: Styles.tsM12
                                        .copyWith(color: AppColors.whiteShade),
                                  )
                                ],
                              );
                            },
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Divider(
                                  color: AppColors.black,
                                  thickness: 1,
                                ),
                              );
                            },
                          ),
                        ),
                        10.hb,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Trending Clips',
                              style: Styles.tsSb16
                                  .copyWith(color: AppColors.white),
                            ),
                            Text('View All',
                                style: Styles.tsM14
                                    .copyWith(color: AppColors.white))
                          ],
                        ),
                        10.hb,
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .36,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.separated(
                            itemBuilder: (context, index) {
                              return Stack(
                                alignment: Alignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.asset(
                                          Images.icPixcelTima,
                                          fit: BoxFit.scaleDown,
                                          scale: 1.4,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    bottom: 70,
                                    child: Row(
                                      children: [
                                        Image.asset(Images.icGodsEmber),
                                        20.wb,
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Gods Ember',
                                                style: Styles.tsSb14.copyWith(
                                                    color: AppColors.white)),
                                            Text('95.1k',
                                                style: Styles.tsSb14.copyWith(
                                                    color: AppColors.white))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Divider(
                                  color: AppColors.black,
                                  thickness: 1,
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .42,
                child: PlayButton(
                    buttonText: 'Play', onPressed: () {}, isDisabled: false),
              ),
              Positioned(
                top: 20,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Colors.black,
                        Colors.black26,
                        Colors.transparent
                      ],
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        Images.home,
                        color: AppColors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            Images.upload,
                            color: AppColors.white,
                          ),
                          20.wb,
                          SvgPicture.asset(
                            Images.icSearch,
                            color: AppColors.white,
                          ),
                          20.wb,
                          SvgPicture.asset(
                            Images.icNotification,
                            color: AppColors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
