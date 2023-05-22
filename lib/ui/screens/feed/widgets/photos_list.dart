import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gallery_app/bloc/photos/photos_bloc.dart';
import 'package:gallery_app/data/models/photo/photo.dart';
import 'package:gallery_app/data/services/network_connectivity.dart';
import 'package:gallery_app/data/services/photos/repository.dart';
import 'package:gallery_app/ui/screens/feed/widgets/photo_item.dart';
import 'package:gallery_app/ui/widgets/exception_info.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

///Список фото с пагинацией
@RoutePage()
class PhotosList extends StatefulWidget {
  const PhotosList({
    super.key,
    required this.pagingController,
    this.isNew,
    this.isPopular,
  });
  final PagingController<int, Photo> pagingController;
  final bool? isNew;
  final bool? isPopular;

  @override
  State<PhotosList> createState() => _PhotosListState();
}

class _PhotosListState extends State<PhotosList> {
  final PhotosBloc _photosbloc = PhotosBloc(PhotosRepository());
  late StreamSubscription _blocListingStateSubscription;

  late StreamSubscription _connectivitySubsciption;
  ConnectionStatus connectivityStatus = ConnectionStatus.online;

  @override
  void initState() {
    widget.pagingController.addPageRequestListener((pageKey) {
      _photosbloc.add(
        PhotosEvent.loadPhotos(
          page: pageKey,
          isNew: widget.isNew,
          isPopular: widget.isPopular,
        ),
      );
    });

    _blocListingStateSubscription = _photosbloc.stream.listen((listingState) {
      widget.pagingController.value = PagingState(
        nextPageKey: listingState.nextPageKey,
        error: listingState.error,
        itemList: listingState.itemList,
      );
    });

    _connectivitySubsciption =
        NetworkConnectivity.get().internetStatus().listen(
              (newStatus) => setState(() {
                connectivityStatus = newStatus;
              }),
            );

    super.initState();
  }

  @override
  void dispose() {
    _blocListingStateSubscription.cancel();
    _connectivitySubsciption.cancel();
    widget.pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return connectivityStatus == ConnectionStatus.online
            ? RefreshIndicator.adaptive(
                onRefresh: () => Future.sync(() {
                  _photosbloc.add(PhotosEvent.refresh());
                  widget.pagingController.refresh();
                }),
                child: PagedGridView<int, Photo>(
                  padding: EdgeInsets.only(
                    top: 30,
                    bottom: kBottomNavigationBarHeight,
                  ),
                  pagingController: widget.pagingController,
                  builderDelegate: PagedChildBuilderDelegate<Photo>(
                    noItemsFoundIndicatorBuilder: (context) {
                      return widget.pagingController.error != null
                          ? ExceptionInfo(
                              title: 'No items found',
                              description: (widget.pagingController.error ?? '')
                                  .toString(),
                            )
                          : SizedBox.shrink();
                    },
                    firstPageProgressIndicatorBuilder: (context) =>
                        Center(child: CircularProgressIndicator.adaptive()),
                    newPageProgressIndicatorBuilder: (context) =>
                        Center(child: CircularProgressIndicator.adaptive()),
                    itemBuilder: (context, item, index) {
                      return PhotoItem(
                        photo: item,
                      );
                    },
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 159 / 100,
                  ),
                  showNewPageProgressIndicatorAsGridChild: false,
                ),
              )
            : ExceptionInfo(
                title: 'Oh shucks!',
                description:
                    'Slow or no internet connection.\nPlease check your internet settings',
              );
      },
    );
  }
}
