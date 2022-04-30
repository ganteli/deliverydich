import 'package:deliverydich/utils/colors.dart';
import 'package:deliverydich/utils/dimensions.dart';
import 'package:deliverydich/widgets/additional_text.dart';
import 'package:deliverydich/widgets/app.column.dart';
import 'package:deliverydich/widgets/app_icon.dart';
import 'package:deliverydich/widgets/expandable_text.dart';
import 'package:deliverydich/widgets/icon_text.dart';
import 'package:deliverydich/widgets/main_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DetailFoodBody extends StatelessWidget {
  const DetailFoodBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
              right: 0,
              child: Container(
              width: double.maxFinite,
                height: Dimensions.popularFoodImage,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/image/kombo_0.png"
                    )
                  )
                ),
          )),
          Positioned(
            top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart)
              ],
          )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImage-20,
              child: Container(
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20)
                  ),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Классический комбо",),
                    SizedBox(height: Dimensions.height20,),
                    MainText(text: "О продукте", color: AppColors.TEXT_BLACK,),
                    SizedBox(height: Dimensions.height20,),
                    Expanded(child: SingleChildScrollView(child: ExpandableText(text: "1. Шаурма Классическая (сочное куриное филе, чесночный соус, томаты, капуста, огурец, лаваш.) - 350 г. 2. Картофель фри - 80 г. 3. Напиток на выбор. вашаывшщувыршавырвышрщаышщврашщрывшщраывшщраыршщварщывраывщарыщвшаршыщващшывращрыващшрывщшраыщшваащшыщырващрывашщывщшашщывращшыврашщывщшаышщащршышщваышщващшывашщ testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest")))
                    
                  ],
                ),
          )),
          
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, left: Dimensions.width20, right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.DIVIDER_DARK,
          borderRadius: BorderRadius.only(

            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.SCRIM),
                  SizedBox(width: Dimensions.width10/2,),
                  MainText(text: "0", color: AppColors.TEXT_BLACK,),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add, color: AppColors.SCRIM,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),

              child: MainText(text: "Добавить в корзину", color: AppColors.TEXT_BLACK,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.GOLD
              ),
            )
          ],
        ),
      ),
    );
  }
}
