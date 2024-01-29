import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/constants/app_icons.dart';
import '../../../../common/utils/main_button.dart';

class GetOrder extends StatelessWidget {
  const GetOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: 300,
        height: 170,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: AppColors.white,
          ),
          child: Stack(
            children: [
              Align(
                alignment: const Alignment(1, 1),
                child: SvgPicture.asset(AppIcons.box),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Готов к выдаче",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: AppColors.main,
                                      fontWeight: FontWeight.bold,
                                    )),
                        const Text(
                          "Заказ №10021122",
                          style: TextStyle(color: AppColors.secondaryText),
                        ),
                        const Text(
                          "Самовывоз до 29 марта",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 10),
                        MainButton(
                          text: "Забрать заказ",
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.topRight,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                        child: SizedBox.square(
                          dimension: 30,
                          child: ColoredBox(
                            color: AppColors.secondary.withOpacity(.3),
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: SvgPicture.asset(AppIcons.tick),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
