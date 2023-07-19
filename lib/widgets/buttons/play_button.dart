import 'package:flutter/material.dart';
import 'package:godreign/app/app.dart';
import 'package:godreign/utils/widget_extensions/widget_extenions.dart';

import '../../app/styles/app_colors.dart';
import '../../app/styles/text_styles.dart';

class PlayButton extends StatelessWidget {
  const PlayButton(
      {required this.buttonText,
        required this.onPressed,
        required this.isDisabled,
        Key? key,
        this.color,
        this.borderRadius,
        this.textStyle})
      : super(key: key);
  final VoidCallback onPressed;
  final String buttonText;
  final TextStyle? textStyle;
  final Color? color;
  final double? borderRadius;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 10),
      decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        border: Border(bottom: BorderSide.none),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.white,
                blurRadius: 1,
                offset: Offset(0.60, 0.82)
            )
          ],
        color: AppColors.godsPrimaryGradient,
      ),
      child: Row(children: [
        const Icon(Icons.play_arrow_rounded,color: AppColors.white,),
        6.wb,
        Text(
          "PLAY",
          style: textStyle ?? Styles.tsSb14.copyWith(color: AppColors.white),
          textAlign: TextAlign.center,
        )
      ],),
    );
  }
}
