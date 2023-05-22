// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:gallery_app/data/models/photo/photo.dart' as _i6;
import 'package:gallery_app/ui/screens/feed/feed_screen.dart' as _i2;
import 'package:gallery_app/ui/screens/feed/widgets/photos_list.dart' as _i3;
import 'package:gallery_app/ui/screens/photo_description/photo_description_screen.dart'
    as _i1;
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart'
    as _i7;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    PhotoDescriptionRoute.name: (routeData) {
      final args = routeData.argsAs<PhotoDescriptionRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.PhotoDescriptionScreen(
          key: args.key,
          photo: args.photo,
        ),
      );
    },
    FeedRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FeedScreen(),
      );
    },
    PhotosList.name: (routeData) {
      final args = routeData.argsAs<PhotosListArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.PhotosList(
          key: args.key,
          pagingController: args.pagingController,
          isNew: args.isNew,
          isPopular: args.isPopular,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.PhotoDescriptionScreen]
class PhotoDescriptionRoute
    extends _i4.PageRouteInfo<PhotoDescriptionRouteArgs> {
  PhotoDescriptionRoute({
    _i5.Key? key,
    required _i6.Photo photo,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          PhotoDescriptionRoute.name,
          args: PhotoDescriptionRouteArgs(
            key: key,
            photo: photo,
          ),
          initialChildren: children,
        );

  static const String name = 'PhotoDescriptionRoute';

  static const _i4.PageInfo<PhotoDescriptionRouteArgs> page =
      _i4.PageInfo<PhotoDescriptionRouteArgs>(name);
}

class PhotoDescriptionRouteArgs {
  const PhotoDescriptionRouteArgs({
    this.key,
    required this.photo,
  });

  final _i5.Key? key;

  final _i6.Photo photo;

  @override
  String toString() {
    return 'PhotoDescriptionRouteArgs{key: $key, photo: $photo}';
  }
}

/// generated route for
/// [_i2.FeedScreen]
class FeedRoute extends _i4.PageRouteInfo<void> {
  const FeedRoute({List<_i4.PageRouteInfo>? children})
      : super(
          FeedRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeedRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PhotosList]
class PhotosList extends _i4.PageRouteInfo<PhotosListArgs> {
  PhotosList({
    _i5.Key? key,
    required _i7.PagingController<int, _i6.Photo> pagingController,
    bool? isNew,
    bool? isPopular,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          PhotosList.name,
          args: PhotosListArgs(
            key: key,
            pagingController: pagingController,
            isNew: isNew,
            isPopular: isPopular,
          ),
          initialChildren: children,
        );

  static const String name = 'PhotosList';

  static const _i4.PageInfo<PhotosListArgs> page =
      _i4.PageInfo<PhotosListArgs>(name);
}

class PhotosListArgs {
  const PhotosListArgs({
    this.key,
    required this.pagingController,
    this.isNew,
    this.isPopular,
  });

  final _i5.Key? key;

  final _i7.PagingController<int, _i6.Photo> pagingController;

  final bool? isNew;

  final bool? isPopular;

  @override
  String toString() {
    return 'PhotosListArgs{key: $key, pagingController: $pagingController, isNew: $isNew, isPopular: $isPopular}';
  }
}
