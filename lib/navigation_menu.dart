import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:utmstore/features/shop/screens/home/home.dart';
import 'package:utmstore/utils/constant/colors.dart';
import 'package:utmstore/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put (NavigationController());
    final darkmode=THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) => controller.selectedIndex.value=index,
            backgroundColor: darkmode?TColors.black:Colors.white,
            indicatorColor: darkmode?TColors.white.withOpacity(0.1):TColors.grey,
            destinations: [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home',),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store',),
              NavigationDestination(
                icon: Icon(Iconsax.heart), label: 'Wishlist',),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile',),

            ]),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    Container(color: Colors.purple),
    Container(color: Colors.orange),
    Container(color: Colors.blue),
  ];
}
