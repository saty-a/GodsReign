import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:godreign/utils/widget_extensions/widget_extenions.dart';
import 'package:godreign/widgets/buttons/play_button.dart';

import '../../app/data/values/images.dart';
import '../../app/styles/app_colors.dart';
import '../../app/styles/text_styles.dart';

class MatchesCard extends StatelessWidget {
  const MatchesCard(this.onTap,
      {required this.gameType, required this.date, Key? key, required this.score, required this.title, required this.subTitle, required this.rating})
      : super(key: key);
  final String gameType;
  final String title;
  final String rating;
  final String subTitle;
  final String date;
  final String score;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 5), // changes position of shadow
            ),
          ]
        ,
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            AppColors.white70,
            AppColors.transparent
          ],

        ),
      ),
      width: MediaQuery.of(context).size.width*.90,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                onPressed: () {},
                color: AppColors.primary900,
                child: Text(gameType,style: Styles.tsSb14.copyWith(color: AppColors.white)),
              ),
              Text(date,style: Styles.tsM12.copyWith(color: AppColors.white),)
            ],
          ),
          10.hb,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(Images.gods_reign,fit: BoxFit.contain,scale: 2,),
              Text(score,style: Styles.tsSb30.copyWith(color: AppColors.white),),
              Image.asset(Images.global_esport,fit: BoxFit.contain,scale: 2,),
            ],
          ),
          20.hb,
          Text(title,style: Styles.tsM14.copyWith(color: AppColors.white),),
          10.hb,
          Text(subTitle,style: Styles.tsM12.copyWith(color: AppColors.white),),
          20.hb,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Icon(Icons.lens,color: AppColors.white,),
                5.wb,
                Text(rating,style: Styles.tsL20.copyWith(color: AppColors.white),)
              ],),
              PlayButton(buttonText: 'Play', onPressed: (){}, isDisabled: false)
          ],)
        ],
      ),
    );
  }
}
