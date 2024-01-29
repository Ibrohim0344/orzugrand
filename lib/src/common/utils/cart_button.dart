import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/app_colors.dart';
import '../constants/app_icons.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      style: FilledButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        backgroundColor: AppColors.main,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      onPressed: () {},
      child: SvgPicture.asset(AppIcons.cart),
    );
  }
}
