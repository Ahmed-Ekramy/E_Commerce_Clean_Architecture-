import 'package:dartz/dartz.dart';
import 'package:e_commerce3/core/utils/failures.dart';
import 'package:e_commerce3/features/home_layout/data/models/brand_model.dart';
import 'package:e_commerce3/features/home_layout/data/models/cat_model.dart';

import '../data_sources/home_dto.dart';

class HomeDataRepo{
  HomeDto homeDto;
  HomeDataRepo(this.homeDto);
  Future<Either<Failures,CategoryModel>>cat()=>homeDto.cat();
  Future<Either<Failures,BrandModel>>brand()=>homeDto.brand();
}