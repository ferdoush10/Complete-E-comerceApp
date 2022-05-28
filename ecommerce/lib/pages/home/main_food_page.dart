import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/dimensions.dart';
import 'package:ecommerce/widgets/big_text.dart';
import 'package:ecommerce/widgets/small_text.dart';
import 'package:flutter/material.dart';

import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // print('Height : ' + MediaQuery.of(context).size.height.toString());//width: 392.72, height : 856.72
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: Dimensions.height45, bottom: Dimensions.height15),
            padding: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(text: "Bangladesh", color: AppColors.mainColor),
                    Row(
                      children: [
                        SmallText(text: "Chandpur", color: Colors.black54),
                        const Icon(Icons.arrow_drop_down_rounded),
                      ],
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: Dimensions.width45,
                    height: Dimensions.height45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: AppColors.mainColor,
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: Dimensions.iconSize24,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: FoodPageBody(),
            ),
          ),
        ],
      ),
    );
  }
}
