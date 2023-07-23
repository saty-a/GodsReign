import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:godreign/app/app.dart';
import 'package:godreign/utils/widget_extensions/widget_extenions.dart';
import 'package:godreign/widgets/buttons/play_button.dart';
import 'package:godreign/widgets/other/matches_card.dart';
import '../../../data/values/images.dart';
import '../../../data/values/strings.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
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
                    child: CarouselSlider.builder(
                      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                          Image.asset(controller.imagesList[controller.index.value]),
                      //Slider Container properties
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height * .50,
                        autoPlay: true,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 1500),
                        viewportFraction: 1,
                        onPageChanged: (index,reason){
                          controller.index.value=index;
                        },
                      ), itemCount: controller.imagesList.length,
                    ),
                  ),
                  Text(controller.titles[controller.index.value],
                      style: Styles.tsSb16.copyWith(color: AppColors.white)),
                  4.hb,
                  Text(
                    controller.subTitle[controller.index.value],
                    style: Styles.tsSb14.copyWith(color: Colors.white24),
                  ),
                  10.hb,
                  DotsIndicator(
                    dotsCount: controller.imagesList.length,
                    position: controller.index.value,
                    decorator: DotsDecorator(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                      activeColor: AppColors.commonButton,
                      size:const Size(40,4),
                      activeSize: const Size(40, 4),
                      activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                    ),
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
                              AppStrings.latestMatches,
                              style: Styles.tsSb16
                                  .copyWith(color: AppColors.white),
                            ),
                            Text(AppStrings.viewAll,
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
                              AppStrings.latestShows,
                              style: Styles.tsSb16
                                  .copyWith(color: AppColors.white),
                            ),
                            Text(AppStrings.viewAll,
                                style: Styles.tsM14
                                    .copyWith(color: AppColors.grey))
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
                                  4.hb,
                                  Text(
                                    '95.1k Viewers',
                                    style: Styles.tsM12
                                        .copyWith(color: AppColors.grey),
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
                              AppStrings.trendingClips,
                              style: Styles.tsSb16
                                  .copyWith(color: AppColors.white),
                            ),
                            Text(AppStrings.viewAll,
                                style: Styles.tsM14
                                    .copyWith(color: AppColors.grey))
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
                                      Container(
                                        foregroundDecoration:  BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: <Color>[
                                              Colors.transparent,
                                              Colors.black26,
                                              Colors.black
                                            ],
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Image.asset(
                                            Images.icPixcelTima,
                                            fit: BoxFit.fill,
                                            scale: 1.4,
                                          ),
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
                                                style: Styles.tsSb12.copyWith(
                                                    color: AppColors.grey))
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
