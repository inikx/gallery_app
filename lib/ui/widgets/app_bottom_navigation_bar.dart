import 'package:flutter/material.dart';
import 'package:gallery_app/utils/constants/app_colors.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        selectedItemColor: AppColors.pink,
        unselectedItemColor: AppColors.grey,
        items: [
          BottomNavigationBarItem(
            label: 'Feed',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Add photo',
            icon: Icon(Icons.photo_camera_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person_outline),
          ),
        ],
      ),
    );
  }
}
