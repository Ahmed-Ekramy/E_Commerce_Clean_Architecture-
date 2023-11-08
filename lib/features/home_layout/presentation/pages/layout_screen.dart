import 'package:e_commerce3/core/utils/app_color.dart';
import 'package:e_commerce3/features/home_layout/presentation/manager/home_cubit.dart';
import 'package:e_commerce3/features/home_layout/presentation/manager/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/routes.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit,HomeState>(
      listener: (context, state) {
      },

     builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0 ,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Badge(
                alignment: Alignment.topCenter,
                label: Text(
                    HomeCubit.get(context).numOfItemsInCart.toString()),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.cart);
                    },
                    icon: const Icon(
                      Icons.shopping_cart,
                      size: 30,
                      color: AppColors.primary,
                    )),
              ),
            )
          ],
        ),
         bottomNavigationBar: BottomNavigationBar(
           currentIndex: HomeCubit.get(context).currentIndex,
           onTap: (value) {
             HomeCubit.get(context).changNavBar(value);
           },
           items:const [
           BottomNavigationBarItem(
               icon: Image(image: AssetImage("assets/images/home.png")),
               label: "",
               backgroundColor:AppColors.primary),
           BottomNavigationBarItem(
               icon: Image(image: AssetImage("assets/images/cat.png")),
               label: "",
               backgroundColor: AppColors.primary),
           BottomNavigationBarItem(
              icon: Image(image: AssetImage("assets/images/fav.png")),
               label: "",
               backgroundColor: AppColors.primary),
           BottomNavigationBarItem(
               icon:  Image(image: AssetImage("assets/images/prof.png")),
               label: "",
               backgroundColor: AppColors.primary),
           ]
         ),
         body: HomeCubit.get(context).tabs[HomeCubit.get(context).currentIndex],
       );
     },
    );
  }
}
