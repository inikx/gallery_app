import 'package:flutter/material.dart';
import 'package:gallery_app/utils/constants/app_colors.dart';

class ExceptionInfo extends StatelessWidget {
  const ExceptionInfo({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/no_internet_connection.png',
            scale: 3,
          ),
          SizedBox(height: 30),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 5),
          Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.grey),
          )
        ],
      ),
    );
  }
}
