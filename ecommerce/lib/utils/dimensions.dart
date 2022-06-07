import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double pageVeiw = screenHeight / 2.64;
  static double pageVeiwContainer = screenHeight / 3.84;
  static double pageVeiwTextContainer = screenHeight / 7.03;
  //dynamic height padding and margin
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.75;
  //dynamic width padding and margin
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;
  static double width45 = screenHeight / 18.75;
  //dynamic fontSize
  static double font16 = screenHeight / 52.75;
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.46;
  //dynamic Radius
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;
  //dynamic iconSize
  static double iconSize24 = screenHeight / 35.17;
  static double iconSize16 = screenHeight / 52.75;

  //listVeiw img    width : 392, height : 856
  static double listVeiwImgSize = screenWidth / 3.27;
  static double listVeiwTextContSize = screenWidth / 3.96;

  //popular food
  static double popularFoodImgSize = screenHeight / 2.41;

  //Bottom height bar - 844/120
  static double bottomHeightBar = screenHeight / 7.13;
}
