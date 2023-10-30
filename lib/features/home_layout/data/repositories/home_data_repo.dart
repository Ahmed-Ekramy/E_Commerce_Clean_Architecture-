import 'package:dartz/dartz.dart';
import 'package:e_commerce3/core/utils/failures.dart';
import 'package:e_commerce3/features/home_layout/data/models/brand_model.dart';
import 'package:e_commerce3/features/home_layout/data/models/cat_model.dart';
import 'package:e_commerce3/features/home_layout/domain/entities/brand_entity.dart';
import 'package:e_commerce3/features/home_layout/domain/entities/cat_entity.dart';
import 'package:e_commerce3/features/home_layout/domain/entities/product_entity.dart';
import 'package:e_commerce3/features/home_layout/domain/repositories/home_domain_repo.dart';

import '../data_sources/home_dto.dart';

class HomeDataRepo extends HomeDomainRepo{
  HomeDto homeDto;
  HomeDataRepo(this.homeDto);
  @override
  Future<Either<Failures,CategoryEntity>>cat()=>homeDto.cat();
  @override
  Future<Either<Failures,BrandEntity>>brand()=>homeDto.brand();
  @override
  Future<Either<Failures, ProductEntity>> product() =>homeDto.product();
}