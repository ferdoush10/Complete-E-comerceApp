import 'package:ecommerce/widgets/icon_and_text_widget.dart';
import 'package:ecommerce/widgets/small_text.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      BigText(text: text, size: Dimensions.font26),
      SizedBox(height: Dimensions.height10),
      Row(
        children: [
          Wrap(
            children: List.generate(
              5,
              (index) => Icon(Icons.star, color: AppColors.mainColor, size: 15),
            ),
          ),
          const SizedBox(width: 10),
          SmallText(text: "4.5"),
          const SizedBox(width: 10),
          SmallText(text: "1287"),
          const SizedBox(width: 10),
          SmallText(text: "Comments"),
        ],
      ),
      SizedBox(height: Dimensions.height20),
      Row(
        children: [
          IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: "Normal",
              iconColor: AppColors.iconColor1),
          const SizedBox(width: 15),
          IconAndTextWidget(
              icon: Icons.location_on,
              text: "1.7km",
              iconColor: AppColors.mainColor),
          const SizedBox(width: 15),
          IconAndTextWidget(
              icon: Icons.access_time_rounded,
              text: "32min",
              iconColor: AppColors.iconColor2),
        ],
      ),
    ]);
  }
}
