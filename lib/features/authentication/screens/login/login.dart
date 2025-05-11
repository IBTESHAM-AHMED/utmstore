import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:utmstore/common/styles/spacing_styles.dart';
import 'package:utmstore/common/widgets.login_signup/form_divider.dart';
import 'package:utmstore/common/widgets.login_signup/social_buttons.dart';
import 'package:utmstore/features/authentication/screens/login/widgets/login_form.dart';
import 'package:utmstore/utils/constant/colors.dart';
import 'package:utmstore/utils/constant/enums.dart';
import 'package:utmstore/utils/constant/sizes.dart';
import 'package:utmstore/utils/helpers/helper_functions.dart';

import '../../../../utils/constant/image_strings.dart';
import 'package:utmstore/utils/constant/text_strings.dart';

import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Logo,Title & SubTitle
              TLoginHeader(dark: dark),

              /// Form
              TLoginForm(),

              ///Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              ///Footer
              TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}







