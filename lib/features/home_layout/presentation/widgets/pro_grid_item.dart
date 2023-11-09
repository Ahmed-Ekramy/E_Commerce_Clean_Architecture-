import 'package:e_commerce3/features/home_layout/presentation/manager/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/strings.dart';
import '../../domain/entities/product_entity.dart';

class proGridItem  extends StatelessWidget {
ProductDataEntity product;

proGridItem(this.product, {super.key});

@override
  Widget build(BuildContext context) {
  return Container(
    width: 191,
    height: 237,
    clipBehavior: Clip.antiAlias,
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 2, color: Color(0x4C004182)),
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                  width: 191,
                  height: 128,
                  child: Image.network( product.imageCover??"",    height: 128.h,
                    fit: BoxFit.cover,
                    width: double.infinity,)),
              Positioned(
                  left: 140,
                  bottom: 90,
                  child: InkWell(
                      onTap: () {
                        HomeCubit.get(context).addFav(product.id??"");
                      },
                      child: Image.asset(AppImages.fav))),
            ],

          ),
          Text(product.title??"",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: poppins14W400(
                color: Color(0xFF06004E),
              )),
          Text(product.description??"",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: poppins14W400(
                color: Color(0xFF06004E),
              )),
          SizedBox(width: 8,),
          Row(children: [

            Text(
                'EGP ${product.price} ',
                style: poppins14W400(color: Color(0xFF06004E),)
            ),
            SizedBox(width: 16,),
            Text(
                ' ${product.sold} ',

                style: poppins12W400(color: Color(0xFF06004E),)
            ),
          ],),
          const SizedBox(width: 8,),
          Row(children: [
            const Text(
              'Review',
              style: TextStyle(
                color: Color(0xFF06004E),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,

              ),
            ),
            SizedBox(width: 4.w,),
            Text(
              '(${product.ratingsAverage})',
              style:TextStyle(
                color: const Color(0xFF06004E),
                fontSize: 12.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(width: 4,),
            const Icon(Icons.star, size: 20, color: Colors.yellow,)
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  HomeCubit.get(context).addToCart(product.id??"");
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(Icons.add, color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
  }
}


