import 'package:flutter/material.dart';
import 'package:task_7/constants/app_colors.dart';
import 'package:task_7/constants/app_svg_icon.dart';
import 'package:task_7/widgets/bottom_navigation_bar_icon.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key, required this.controller});
  final PageController controller;
  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

int selectedIndex = 0;

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          selectedIndex = value;
          widget.controller.animateToPage(value,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn);
          print(selectedIndex);
          setState(() {});
        },
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        elevation: 4,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              label: '',
              icon: selectedIndex == 0
                  ? BottomNavigationBarIcon(
                      dashColor: AppColors.praimeryButtonColor,
                      mainColor: AppColors.disactiveButtonColor,
                      targetColor: AppColors.praimeryButtonColor,
                      svgIcon: AppSvgIcon.activeHome)
                  : BottomNavigationBarIcon(
                      dashColor: Colors.transparent,
                      mainColor: AppColors.disactiveButtonColor,
                      targetColor: AppColors.disactiveButtonColor,
                      svgIcon: AppSvgIcon.home)),
          BottomNavigationBarItem(
              label: '',
              icon: selectedIndex == 1
                  ? BottomNavigationBarIcon(
                      dashColor: AppColors.praimeryButtonColor,
                      mainColor: AppColors.disactiveButtonColor,
                      targetColor: AppColors.praimeryButtonColor,
                      svgIcon: AppSvgIcon.map)
                  : BottomNavigationBarIcon(
                      dashColor: Colors.transparent,
                      mainColor: AppColors.disactiveButtonColor,
                      targetColor: AppColors.disactiveButtonColor,
                      svgIcon: AppSvgIcon.map)),
          BottomNavigationBarItem(
            label: '',
            icon: selectedIndex == 2
                ? BottomNavigationBarIcon(
                    dashColor: AppColors.praimeryButtonColor,
                    mainColor: const Color(0xffBDBDBD),
                    targetColor: AppColors.praimeryButtonColor,
                    svgIcon: AppSvgIcon.message)
                : BottomNavigationBarIcon(
                    dashColor: Colors.transparent,
                    mainColor: const Color(0xffBDBDBD),
                    targetColor: const Color(0xffBDBDBD),
                    svgIcon: AppSvgIcon.message),
          ),
          BottomNavigationBarItem(
              label: '',
              icon: selectedIndex == 3
                  ? BottomNavigationBarIcon(
                      dashColor: AppColors.praimeryButtonColor,
                      mainColor: AppColors.disactiveButtonColor,
                      targetColor: AppColors.praimeryButtonColor,
                      svgIcon: AppSvgIcon.profile)
                  : BottomNavigationBarIcon(
                      dashColor: Colors.transparent,
                      mainColor: AppColors.disactiveButtonColor,
                      targetColor: AppColors.disactiveButtonColor,
                      svgIcon: AppSvgIcon.profile)),
        ]);
  }
}
