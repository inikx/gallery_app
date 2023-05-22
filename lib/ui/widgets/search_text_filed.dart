import 'package:flutter/material.dart';
import 'package:gallery_app/utils/constants/app_colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.search,
          color: AppColors.pink,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 15),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGrey),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGrey),
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: 'Search',
        hintStyle: Theme.of(context)
            .textTheme
            .titleSmall!
            .copyWith(color: AppColors.grey),
      ),
    );
  }
}
