import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gallery_app/core/navigation/app_router.gr.dart';
import 'package:gallery_app/data/models/photo/photo.dart';
import 'package:gallery_app/ui/widgets/app_bottom_navigation_bar.dart';
import 'package:gallery_app/ui/widgets/search_text_filed.dart';

import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

///Экран отображения списка фото
@RoutePage()
class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  late PagingController<int, Photo> _newPhotosPagingController =
      PagingController(firstPageKey: 1);
  late PagingController<int, Photo> _popularPhotosPagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: AutoTabsRouter.tabBar(
          routes: [
            PhotosList(
              pagingController: _newPhotosPagingController,
              isNew: true,
            ),
            PhotosList(
              pagingController: _popularPhotosPagingController,
              isPopular: true,
            )
          ],
          builder: (context, child, controller) {
            return NestedScrollView(
              body: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: child,
              ),
              floatHeaderSlivers: true,
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                      context,
                    ),
                    sliver: SliverAppBar(
                      primary: true,
                      forceElevated: innerBoxIsScrolled,
                      title: SearchTextField(),
                      bottom: TabBar(
                        controller: controller,
                        tabs: const [
                          Tab(
                            text: 'New',
                          ),
                          Tab(
                            text: 'Popular',
                          ),
                        ],
                      ),
                      floating: true,
                    ),
                  )
                ];
              },
            );
          },
        ),
      ),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
