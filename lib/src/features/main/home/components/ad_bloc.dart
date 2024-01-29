import 'package:flutter/material.dart';

import '../../../../common/constants/app_images.dart';

class AdBloc extends StatelessWidget {
  const AdBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage(AppImages.adToshiba),
        ),
      ),
    );
  }
}
