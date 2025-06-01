import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:utmstore/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:utmstore/utils/constant/colors.dart';
import 'package:utmstore/utils/constant/sizes.dart';
import 'package:utmstore/utils/device/device_utility.dart';
import 'package:utmstore/utils/helpers/helper_functions.dart';

import '../../../controllers/onboarding_controller.dart';




class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark= THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? TColors.light: TColors.dark, dotHeight: 6
        ),
      ),
    );
  }
}