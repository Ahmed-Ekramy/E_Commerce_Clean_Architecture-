import 'package:dartz/dartz.dart';
import 'package:e_commerce3/core/utils/failures.dart';
import 'package:e_commerce3/features/home_layout/domain/entities/brand_entity.dart';

import '../repositories/home_domain_repo.dart';

class BrandUseCase{
  HomeDomainRepo homeDomainRepo;
  BrandUseCase(this.homeDomainRepo);
  Future<Either<Failures,BrandEntity>>call()=>homeDomainRepo.brand();
}