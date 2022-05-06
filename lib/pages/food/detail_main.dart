import 'package:deliverydich/utils/colors.dart';
import 'package:deliverydich/utils/dimensions.dart';
import 'package:deliverydich/widgets/app_icon.dart';
import 'package:deliverydich/widgets/expandable_text.dart';
import 'package:deliverydich/widgets/main_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainFoodDetail extends StatelessWidget {
  const MainFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart)
              ],
            ),
            bottom: PreferredSize(preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(child: MainText(text: "Классическая шаурма", color: AppColors.TEXT_BLACK, size: Dimensions.font20,)),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
                decoration: BoxDecoration (
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20)
                )
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.GOLD,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                  "assets/image/food_0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,

              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableText(text: "1. Шаурма Классическая (сочное куриное филе, чесночный соус, томаты, капуста, огурец, лаваш.) - 350 г. 2. Картофель фри - 80 г. 3. Напиток на выбор.1. Шаурма Классическая (сочное куриное филе, чесночный соус, томаты, капуста, огурец, лаваш.) - 350 г. 2. Картофель фри - 80 г. 3. Напиток на выбор.1. Шаурма Классическая (сочное куриное филе, чесночный соус, томаты, капуста, огурец, лаваш.) - 350 г. 2. Картофель фри - 80 г. 3. Напиток на выбор.1. Шаурма Классическая (сочное куриное филе, чесночный соус, томаты, капуста, огурец, лаваш.) - 350 г. 2. Картофель фри - 80 г. 3. Напиток на выбор.1. Шаурма Классическая (сочное куриное филе, чесночный соус, томаты, капуста, огурец, лаваш.) - 350 г. 2. Картофель фри - 80 г. 3. Напиток на выбор.1. Шаурма Классическая (сочное куриное филе, чесночный соус, томаты, капуста, огурец, лаваш.) - 350 г. 2. Картофель фри - 80 г. 3. Напиток на выбор.1. Шаурма Классическая (сочное куриное филе, чесночный соус, томаты, капуста, огурец, лаваш.) - 350 г. 2. Картофель фри - 80 г. 3. Напиток на выбор.1. Шаурма Классическая (сочное куриное филе, чесночный соус, томаты, капуста, огурец, лаваш.) - 350 г. 2. Картофель фри - 80 г. 3. Напиток на выбор.1. Шаурма Классическая (сочное куриное филе, чесночный соус, томаты, капуста, огурец, лаваш.) - 350 г. 2. Картофель фри - 80 г. 3. Напиток на выбор.1. Шаурма Классическая (сочное куриное филе, чесночный соус, томаты, капуста, огурец, лаваш.) - 350 г. 2. Картофель фри - 80 г. 3. Напиток на выбор.1. Шаурма Классическая (сочное куриное филе, чесночный соус, томаты, капуста, огурец, лаваш.) - 350 г. 2. Картофель фри - 80 г. 3. Напиток на выбор.1. Шаурма Классическая (сочное куриное филе, чесночный соус, томаты, капуста, огурец, лаваш.) - 350 г. 2. Картофель фри - 80 г. 3. Напиток на выбор.1. Шаурма Классическая (сочное куриное филе, чесночный соус, томаты, капуста, огурец, лаваш.) - 350 г. 2. Картофель фри - 80 г. 3. Напиток на выбор."),
                  margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                )
              ],
            )
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.remove,
                  iconSize: Dimensions.iconSize24,),
                MainText(text: "160.0\₽ " + " X " + " 0 ", color: AppColors.TEXT_BLACK, size: Dimensions.font26,),
                AppIcon(icon: Icons.add, iconSize: Dimensions.iconSize24,)
              ],
            ),
          ),
          Container(
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
                  child: const Icon(
                    Icons.favorite,
                    color: AppColors.TEXT_BLACK,
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
        ],
      ),
    );
  }
}
