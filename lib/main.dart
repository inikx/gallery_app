import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:gallery_app/bloc/app_bloc_observer.dart';
import 'package:gallery_app/core/navigation/app_navigation.dart';
import 'package:gallery_app/core/theme/app_theme.dart';
import 'package:gallery_app/data/services/network_client.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  NetworkClient.get().init();

  runApp(const GalleryApp());
}

class GalleryApp extends StatelessWidget {
  const GalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Gallery App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routerConfig: AppNavigation.router.config(),
    );
  }
}
