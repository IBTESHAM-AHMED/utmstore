import 'package:flutter/material.dart';

import '../../../../utils/constant/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';
class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.only(bottom: 0),

        /// Fixes `Stack` infinite size error by wrapping in a constrained widget
        child: Stack(
          children: [
            /// Background Custom Shapes
            Positioned(
              top: -150,
              right: -250,
              child: TCircularContainer(backgroundColor: TColors.textWhite),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: TCircularContainer(backgroundColor: TColors.textWhite),
            ),

            /// Main child content
            child,
          ],
        ),
      ),
    );
  }
}
