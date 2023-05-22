import 'package:flutter/material.dart';
import 'package:gallery_app/utils/constants/app_colors.dart';

///Тема приложения
abstract class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Roboto',
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.pink,
      onPrimary: Colors.black,
      secondary: AppColors.pink,
      onSecondary: AppColors.white,
      error: AppColors.red,
      onError: AppColors.white,
      background: AppColors.white,
      onBackground: Colors.transparent,
      surface: AppColors.white,
      onSurface: Colors.transparent,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.grey,
    ),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: AppColors.purple),
      titleTextStyle: TextStyle(color: AppColors.black),
      centerTitle: true,
      titleSpacing: 0,
      toolbarTextStyle: TextStyle(
        color: AppColors.black,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      surfaceTintColor: Colors.transparent,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 1,
    ),
    tabBarTheme: TabBarTheme(
      labelColor: AppColors.black,
      unselectedLabelColor: AppColors.grey,
      unselectedLabelStyle: TextStyle(
        fontFamily: 'SFUIText',
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      labelStyle: TextStyle(
        fontFamily: 'SFUIText',
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      splashFactory: NoSplash.splashFactory,
      overlayColor:
          MaterialStateProperty.resolveWith((states) => Colors.transparent),
      indicator: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.pink,
            width: 3,
          ),
        ),
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'SFUIText',
        color: AppColors.black,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Roboto',
        color: AppColors.purple,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        fontFamily: 'SFUIText',
        color: AppColors.pink,
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.black,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'SFUIText',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.black,
      ),
    ),
  );
}
