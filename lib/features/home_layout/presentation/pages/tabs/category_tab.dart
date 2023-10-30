
import 'package:e_commerce3/config/routes.dart';
import 'package:e_commerce3/features/home_layout/domain/entities/product_entity.dart';
import 'package:e_commerce3/features/home_layout/presentation/manager/home_cubit.dart';
import 'package:e_commerce3/features/home_layout/presentation/manager/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/pro_grid_item.dart';

class CatTab extends StatelessWidget {
  const CatTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding:  EdgeInsets.symmetric(horizontal: 5.0.w,vertical: 24.h),
          child: Column(
            children: [
              Expanded(child: GridView.count(
                crossAxisSpacing: 5,
                mainAxisSpacing: 6,
                crossAxisCount: 2,
                childAspectRatio: 4 / 5,
                shrinkWrap: true,
                children: List.generate(HomeCubit
                  .get(context)
                  .products
                  .length, (index) =>  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.productDetail,arguments:HomeCubit.get(context).products[index] );
                    },
                    
                    child: proGridItem(HomeCubit.get(context).products[index]))),))
            ],
          ),
        );
      },
    );
  }


}
