import 'package:e_commerce3/features/home_layout/presentation/manager/home_cubit.dart';
import 'package:e_commerce3/features/home_layout/presentation/manager/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

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
               icon: Icon(Icons.home),
               label: "",
               backgroundColor: Colors.lightBlue),
           BottomNavigationBarItem(
               icon: Icon(Icons.category_outlined),
               label: "",
               backgroundColor: Colors.lightBlue),
           BottomNavigationBarItem(
               icon: Icon(Icons.favorite_border),
               label: "",
               backgroundColor: Colors.lightBlue),
           BottomNavigationBarItem(
               icon: Icon(Icons.person),
               label: "",
               backgroundColor: Colors.lightBlue),
           ]
         ),
         body: HomeCubit.get(context).tabs[HomeCubit.get(context).currentIndex],
       );
     },
    );
  }
}
