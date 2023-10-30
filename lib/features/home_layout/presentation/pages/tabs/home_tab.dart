import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/strings.dart';
import '../../manager/home_cubit.dart';
import '../../manager/home_state.dart';
import '../../widgets/brand_grid_item.dart';
import '../../widgets/cat_gride_item.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 47.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 348.w,
                      height: 50.h,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Container(
                              margin: EdgeInsets.only(
                                  left: 24.07.w,
                                  top: 13.h,
                                  bottom: 13.h,
                                  right: 7.93.w),
                              child: const Icon(
                                Icons.search_rounded,
                                color: AppColors.primary,
                              )),
                          hintText: 'what do you search for?',
                          hintStyle: poppins14W300(color: AppColors.hintColor),
                          filled: true,
                          contentPadding: const EdgeInsets.only(top: 20.0),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.r),
                            borderSide: const BorderSide(
                                color: AppColors.primary, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.r),
                            borderSide: const BorderSide(
                                color: AppColors.primary, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.r),
                            borderSide: const BorderSide(
                                color: AppColors.primary, width: 1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.shopping_cart,
                          size: 22,
                          color: AppColors.primary,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              ImageSlideshow(
                  height: 200.h,
                  width: 398.w,
                  isLoop: true,
                  indicatorColor: AppColors.primary,
                  indicatorBackgroundColor: Colors.white,
                  children: HomeCubit.get(context).sliders.map((i) {
                    return Image.asset(i);
                  }).toList()),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.h, right: 17.h),
                child: Text(
                  "Categories",
                  style: poppins18W500(),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 280.h,
                child: GridView.count(
                  physics: const BouncingScrollPhysics(),
                  crossAxisCount: 2,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      HomeCubit.get(context).categories.length,
                      (index) => catGridViewItem(HomeCubit.get(context).categories[index])),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                width: double.infinity,
                child: Text(
                  "Brands",
                  textAlign: TextAlign.start,
                  style: poppins18W500(),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 280.h,
                child: GridView.count(
                  physics: const BouncingScrollPhysics(),
                  crossAxisCount: 2,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      HomeCubit.get(context).brands.length,
                      (index) => brandGridViewItem(HomeCubit.get(context).brands[index])),
                ),
              ),

            ],
          ),
        );
      },
    );
  }

}
