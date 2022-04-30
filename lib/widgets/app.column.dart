import 'package:deliverydich/utils/colors.dart';
import 'package:deliverydich/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'additional_text.dart';
import 'icon_text.dart';
import 'main_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainText(text: text, size: Dimensions.font26, color: AppColors.TEXT_BLACK,),
        SizedBox(height: Dimensions.height10,),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {return Icon(Icons.star, color: AppColors.GOLD, size: 13,);}),
            ),
            SizedBox(width: 10,),
            AdditionalText(text: "5.0"),
            SizedBox(width: 10,),
            AdditionalText(text: "483 комментария")
          ],
        ),
        SizedBox(height: Dimensions.height20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconTextWidget(icon: Icons.circle_sharp,
                text: "Популярно",

                iconColor: AppColors.CATEGORY_COLOR_01),

            IconTextWidget(icon: Icons.location_on,
                text: "1км",

                iconColor: AppColors.TERTIARY_DARK),

            IconTextWidget(icon: Icons.access_time_rounded,
                text: "1мин",

                iconColor: AppColors.GOLD)

          ],
        )
      ],
    );
  }
}
