import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/constants/app_icons.dart';
import '../../../common/utils/main_button.dart';
import 'components/ad_bloc.dart';
import 'components/discount_widget.dart';
import 'components/get_order.dart';
import 'components/search_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.sizeOf(context);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.background,
          surfaceTintColor: AppColors.background,
          leading: Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(AppIcons.location),
          ),
          title: const Text(
            "ORZUGRAND",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: AppColors.main,
              letterSpacing: 1,
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: SvgPicture.asset(AppIcons.messages),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                top: 5,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(AppIcons.person),
                  const SizedBox(width: 10),
                  Text(
                    "Здравствуйте, ",
                    style: textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Дониёр",
                    style: textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.secondary,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    GetOrder(),
                    GetOrder(),
                    GetOrder(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: double.infinity,
              child: ColoredBox(
                color: AppColors.white,
                child: Column(
                  children: [
                    const SearchField(),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(width: 5),
                            AdBloc(),
                            AdBloc(),
                            AdBloc(),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        bottom: 40,
                      ),
                      child: MainButton(
                        text: "Все акции",
                        onPressed: () {},
                        size: Size(size.width - 30, 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Товар дня",
                            style: textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const Text(
                            "22 : 33 : 15",
                            style: TextStyle(
                              color: AppColors.secondaryText,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: DiscountBloc(width: size.width - 30),
                    ),
                    Text(
                      "Рекомендуем вам",
                      textAlign: TextAlign.left,
                      style: textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
              child: AppBar(
                backgroundColor: AppColors.white,
                surfaceTintColor: AppColors.white,
                bottom: const TabBar(
                  isScrollable: true,
                  indicatorColor: AppColors.main,
                  physics: AlwaysScrollableScrollPhysics(),
                  unselectedLabelStyle: TextStyle(
                    color: AppColors.secondaryText,
                    fontWeight: FontWeight.w500,
                  ),
                  labelStyle: TextStyle(
                    color: AppColors.main,
                    fontWeight: FontWeight.w500,
                  ),
                  tabs: [
                    Tab(text: "Новинки"),
                    Tab(text: "Популярное"),
                    Tab(text: "Скидки + Рассрочка"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  DiscountBloc(width: size.width - 50),
                  DiscountBloc(width: size.width - 50),
                  DiscountBloc(width: size.width - 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
