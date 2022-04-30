
import 'package:deliverydich/utils/colors.dart';
import 'package:deliverydich/utils/dimensions.dart';
import 'package:deliverydich/widgets/additional_text.dart';
import 'package:deliverydich/widgets/main_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'food_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(

            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      MainText(text: "Россия", color: AppColors.CATEGORY_COLOR_04),
                      Row(
                        children: [
                          AdditionalText(text: "Смоленск"),
                          Icon(Icons.arrow_drop_down, size: Dimensions.iconSize24,)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      child: Icon(Icons.search, color: AppColors.PRIMARY_LIGHT_LIGHT),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                        color: AppColors.GOLD,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(
            child: FoodBody(),
          )),
        ],
      ),
    );
  }
}
