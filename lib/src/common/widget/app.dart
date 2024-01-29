import 'package:flutter/material.dart';

import '../../features/main/main_screen.dart';
import '../constants/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ORZUGRAND",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "OpenSans",
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.main),
      ),
      home: const MainScreen(),
    );
  }
}
