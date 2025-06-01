import 'package:flutter/material.dart';
// import 'package:utmstore/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:utmstore/features/authentication/screens/OnBoarding/widgets/onboarding_next_button.dart';
import 'package:utmstore/features/authentication/screens/OnBoarding/widgets/onboarding_page.dart';
import 'package:utmstore/features/authentication/screens/OnBoarding/widgets/onboarding_skip.dart';
import 'package:utmstore/utils/constant/text_strings.dart';
import '../../controllers/onboarding_controller.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'package:utmstore/utils/constant/image_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:utmstore/utils/constant/colors.dart';
import 'package:utmstore/utils/constant/sizes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:utmstore/utils/device/device_utility.dart';
import 'package:utmstore/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///OnBoarding Controller to handle logic
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingSubTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingSubTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingSubTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              )
            ],
          ),


          /// Skip button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          OnBoardingDotNavigation(),

          /// Circular Button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}




