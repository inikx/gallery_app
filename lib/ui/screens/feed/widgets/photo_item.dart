import 'package:flutter/material.dart';
import 'package:gallery_app/core/navigation/app_navigation.dart';
import 'package:gallery_app/core/navigation/app_router.gr.dart';
import 'package:gallery_app/data/models/photo/photo.dart';
import 'package:gallery_app/ui/widgets/app_cached_network_image.dart';

///Виджет фото
class PhotoItem extends StatelessWidget {
  const PhotoItem({super.key, required this.photo});
  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppNavigation.router.push(PhotoDescriptionRoute(photo: photo));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: AppCachedNetworkImage(imageUrl: photo.image.name),
      ),
    );
  }
}
