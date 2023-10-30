import 'package:e_commerce3/core/utils/app_color.dart';
import 'package:e_commerce3/features/home_layout/presentation/manager/home_cubit.dart';
import 'package:e_commerce3/features/home_layout/presentation/manager/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit,HomeState>(
      listener: (context, state) {
      },

     builder: (context, state) {
      return Scaffold(
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
