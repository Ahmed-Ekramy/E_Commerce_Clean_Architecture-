import 'package:e_commerce3/features/home_layout/presentation/manager/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cart/presentation/widgets/get_fav_item.dart';
import '../../manager/home_cubit.dart';

class FavTab extends StatelessWidget {
  const FavTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
          return Column(
            children: [
              Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        GetFavItem(
                   HomeCubit.get(context).favList[index],
                        ),
                    itemCount: HomeCubit.get(context).favList.length,
                  ))
            ],
          );
        }
    );
      }
}
