import 'package:e_commerce3/features/home_layout/domain/entities/brand_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Widget brandGridViewItem(BrandDataEntity brandes) {
  return Column(
    children: [
      SizedBox(
        width: 100.w,
        height: 100.h,
        child:  CircleAvatar(
          backgroundImage: NetworkImage(brandes.image??""),
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      SizedBox(
        child: Text(brandes.name ?? ""),
      )
    ],
  );
}
