import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class MainButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Size? size;

  const MainButton({
    required this.text,
    this.onPressed,
    this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      style: FilledButton.styleFrom(
        fixedSize: size,
        backgroundColor: AppColors.main,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
