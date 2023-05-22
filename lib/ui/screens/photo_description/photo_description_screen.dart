import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/bloc/users/users_bloc.dart';
import 'package:gallery_app/data/models/photo/photo.dart';
import 'package:gallery_app/data/services/users/repository.dart';
import 'package:gallery_app/ui/widgets/app_cached_network_image.dart';
import 'package:gallery_app/utils/constants/app_colors.dart';
import 'package:intl/intl.dart';

///Экран отображения информации о фото
@RoutePage()
class PhotoDescriptionScreen extends StatelessWidget {
  final Photo photo;
  const PhotoDescriptionScreen({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          AppCachedNetworkImage(
            imageUrl: photo.image.name,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
            child: Text(
              photo.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Builder(
            builder: (context) {
              return photo.user != null
                  ? BlocProvider(
                      create: (context) => UsersBloc(UsersRepository())
                        ..add(
                          UsersEvent.loadUser(
                            id: int.parse(photo.user!.split('/').last),
                          ),
                        ),
                      child: BlocBuilder<UsersBloc, UsersState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            loaded: (item) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                ),
                                child: Text(
                                  item.username,
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              );
                            },
                            orElse: () {
                              return SizedBox.shrink();
                            },
                          );
                        },
                      ),
                    )
                  : SizedBox.shrink();
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Text(
              photo.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              DateFormat("dd MMM. yyyy").format(photo.dateCreate).toString(),
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: AppColors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
