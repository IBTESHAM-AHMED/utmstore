import 'package:flutter/material.dart';
import 'package:utmstore/app.dart';
import 'package:utmstore/common/widgets/login_signup/form_divider.dart';
import 'package:utmstore/common/widgets/login_signup/social_buttons.dart';
import 'package:utmstore/features/authentication/screens/Signup/signup.widgets/signup_form.dart';
import 'package:utmstore/utils/constant/colors.dart';
import 'package:utmstore/utils/constant/enums.dart';
import 'package:utmstore/utils/constant/sizes.dart';
import 'package:utmstore/utils/constant/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:utmstore/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///title
              Text(TTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///Form
              TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections,),
              const TSocialButton(),

            ],
          ),
        ),
      ),
    );
  }
}


