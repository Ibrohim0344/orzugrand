import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/constants/app_colors.dart';
import '../../common/constants/app_icons.dart';
import 'cart/cart_screen.dart';
import 'catalog/catalog_screen.dart';
import 'favorite/favorite_screen.dart';
import 'home/home_screen.dart';
import 'profile/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final PageController pageController;
  int currentIndex = 0;

  void onPageChanged(int index) {
    pageController.jumpToPage(index);
    currentIndex = index;
    setState(() {});
  }

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          CatalogScreen(),
          CartScreen(),
          FavoriteScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        unselectedLabelStyle: const TextStyle(color: AppColors.secondaryText),
        items: [
          BottomNavigationBarItem(
            label: "Главная",
            icon: SvgPicture.asset(AppIcons.homeNav),
          ),
          BottomNavigationBarItem(
            label: "Каталог",
            icon: SvgPicture.asset(AppIcons.catalogNav),
          ),
          BottomNavigationBarItem(
            label: "Корзина",
            icon: SvgPicture.asset(AppIcons.cartNav),
          ),
          BottomNavigationBarItem(
            label: "Избранное",
            icon: SvgPicture.asset(AppIcons.favoriteNav),
          ),
          BottomNavigationBarItem(
            label: "Профиль",
            icon: SvgPicture.asset(AppIcons.profileNav),
          ),
        ],
      ),
    );
  }
}
