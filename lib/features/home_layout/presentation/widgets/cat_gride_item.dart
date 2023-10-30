import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/entities/cat_entity.dart';

Widget catGridViewItem(CatDataEntity categories) {
  return Column(
    children: [
      SizedBox(
        width: 100.w,
        height: 100.h,
        child:  CircleAvatar(
          backgroundImage: NetworkImage(categories.image??""),
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      SizedBox(
        child: Text(categories.name ?? ""),
      )
    ],
  );
}
