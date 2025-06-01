import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/container/circular_container.dart';
import '../../../../utils/constant/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: TColors.primary,
              padding: const EdgeInsets.all(0),
              child: Stack(
                children: [
                  // First circular container
                  TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),),
                  // Second circular container
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

