import 'package:flutter/material.dart';

import '../../../../utils/constant/colors.dart';
class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.child,
    this.width=400,
    this.height=400,
    this.radius=400,
    this.padding=0,
    this.backgroundColor= TColors.textWhite,
  });
  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
    );
  }
}
//Color.fromRGBO(255, 255, 255, 0.1)