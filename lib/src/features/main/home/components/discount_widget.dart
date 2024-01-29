import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/constants/app_icons.dart';
import '../../../../common/constants/app_images.dart';
import '../../../../common/utils/cart_button.dart';

class DiscountBloc extends StatelessWidget {
  final double width;

  const DiscountBloc({required this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: width,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              color: AppColors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: AppColors.secondaryText.withOpacity(.2),
                  blurRadius: 8,
                  spreadRadius: .1,
                ),
              ],
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: SizedBox(
                    height: 150,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(AppImages.ps5),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    bottom: 25,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Микроволновая печь соло Gorenje",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Text(
                        "MO17E1W",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "2 000 000 сум",
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "1 750 000 сум",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      color: AppColors.main,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                          const CartButton(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SvgPicture.asset(AppIcons.popular),
        ),
      ],
    );
  }
}
