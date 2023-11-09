import 'package:e_commerce3/features/home_layout/domain/entities/get_fav_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_color.dart';

class GetFavItem extends StatelessWidget {
  GetFavItem(this.favList);
  DataGetFav favList;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 10.w),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primary),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 120,
              height: 113,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: NetworkImage(favList.imageCover??""),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0x4C004182)),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      favList.title?.substring(0, 11) ?? "",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFF06004E),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 60.w,
                    ),
                    // IconButton(
                    //     onPressed: () {
                    //       GetCartCubit.get(context).delCart(favList.id??"");
                    //     },
                    //     icon: const Icon(
                    //       Icons.delete,
                    //       size: 30,
                    //     ))
                  ],
                ),
                SizedBox(
                  height: 13.h,
                ),
                Text(
                  ' ${favList.subcategory!.single.name ?? ""}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0x9906004E),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    Text(
                      'EGP ${favList.price}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFF06004E),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 53.w,
                    ),
                    // Container(
                    //     padding: const EdgeInsets.all(8),
                    //     margin: const EdgeInsets.only(bottom: 8),
                    //     decoration: BoxDecoration(
                    //       color: const Color(0xff004182),
                    //       borderRadius: BorderRadius.circular(20),
                    //     ),
                    //     child:
                    //     Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         IconButton(
                    //             padding: EdgeInsets.zero,
                    //             constraints: const BoxConstraints(),
                    //             onPressed: () {
                    //               int counter = favList. ?? 0;
                    //               counter--;
                    //               GetCartCubit.get(context).upDate(
                    //                   product.product?.id ?? "", counter);
                    //             },
                    //             icon: const Icon(
                    //               Icons.remove_circle_outline,
                    //               size: 20,
                    //               color: Colors.white,
                    //             )),
                    //         SizedBox(
                    //           width: 15.w,
                    //         ),
                    //         Text(
                    //           product.count.toString() ?? "0",
                    //           style: const TextStyle(
                    //               fontSize: 18, color: Colors.white),
                    //         ),
                    //         SizedBox(
                    //           width: 15.w,
                    //         ),
                    //         IconButton(
                    //             padding: EdgeInsets.zero,
                    //             constraints: const BoxConstraints(),
                    //             onPressed: () {
                    //               int counter = product.count ?? 0;
                    //               counter++;
                    //               GetCartCubit.get(context).upDate(
                    //                   product.product?.id ?? "", counter);
                    //             },
                    //             icon: const Icon(
                    //               Icons.add_circle_outline,
                    //               size: 20,
                    //               color: Colors.white,
                    //             ))
                    //       ],
                    //     ),
                    // ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
