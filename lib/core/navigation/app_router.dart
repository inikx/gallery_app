import 'package:auto_route/auto_route.dart';
import 'package:gallery_app/core/navigation/app_router.gr.dart';

///Навигация приложения
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/feed',
          page: FeedRoute.page,
          initial: true,
          children: [
            AutoRoute(
              path: 'images',
              page: PhotosList.page,
            ),
          ],
        ),
        AutoRoute(path: '/image:name', page: PhotoDescriptionRoute.page),
      ];
}
