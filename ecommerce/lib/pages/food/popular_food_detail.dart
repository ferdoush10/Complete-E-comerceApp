import 'package:ecommerce/utils/dimensions.dart';
import 'package:ecommerce/widgets/app_column.dart';
import 'package:ecommerce/widgets/app_icon.dart';
import 'package:ecommerce/widgets/expandable_text.dart';
//import 'package:ecommerce/widgets/expandable_text.dart';
import 'package:readmore/readmore.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
//import '../../widgets/icon_and_text_widget.dart';
//import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        //background image
        Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/food0.png"),
                  fit: BoxFit.cover,
                ),
              ),
            )),
        //Icon widgets
        Positioned(
          top: Dimensions.height45,
          left: Dimensions.width20,
          right: Dimensions.width20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(icon: Icons.arrow_back_ios),
              AppIcon(icon: Icons.shopping_cart_outlined),
            ],
          ),
        ),
        //Introduction of Food
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          //height: 300,
          top: Dimensions.popularFoodImgSize - 20,
          child: Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20),
                topRight: Radius.circular(Dimensions.radius20),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppColumn(text: "Deshi Dish"),
                SizedBox(height: Dimensions.height20),
                BigText(text: "Introduce"),
                const ExpandableText(
                    text:
                        ",I love flutter larabel and phop I love flutter larabel and phopI love flutter larabel and phopI love flutter larabel and phopI love flutter larabel and phopI love flutter larabel and phopI love flutter larabel and phopI love flutter larabel and phopI love flutter larabel and phopI love flutter larabel and phopI love flutter larabel and phopI love flutter larabel and phopI love flutter larabel and phopI love flutter larabel and phopI love flutter larabel and phopI love flutter larabel and phop")
              ],
            ),
          ),
        ),
        //Expandable text widget
      ]),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.bottomBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20,
              right: Dimensions.width20,
              top: Dimensions.height20,
              bottom: Dimensions.height20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Icon(Icons.remove, color: AppColors.signColor),
                SizedBox(width: Dimensions.width10 / 2),
                BigText(text: "0"),
                SizedBox(width: Dimensions.width10 / 2),
                Icon(Icons.add, color: AppColors.signColor),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20,
              right: Dimensions.width20,
              top: Dimensions.height20,
              bottom: Dimensions.height20,
            ),
            child: BigText(
              text: "\$10 | Add to cart",
              color: Colors.white,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: AppColors.mainColor,
            ),
          ),
        ]),
      ),
    );
  }
}
