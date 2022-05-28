import 'package:ecommerce/utils/dimensions.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText(
      {Key? key,
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.size = 0,
      this.overFlow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(
        color: color,
        fontSize: size == 0 ? Dimensions.font20 : size,
        fontFamily: 'roboto',
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
