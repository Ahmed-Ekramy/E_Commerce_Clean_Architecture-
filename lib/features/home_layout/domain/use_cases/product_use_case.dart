import 'package:dartz/dartz.dart';
import 'package:e_commerce3/core/utils/failures.dart';
import 'package:e_commerce3/features/home_layout/domain/entities/product_entity.dart';
import 'package:e_commerce3/features/home_layout/domain/repositories/home_domain_repo.dart';

class ProductUseCase{
  HomeDomainRepo homeDomainRepo;
  ProductUseCase(this.homeDomainRepo);
  Future<Either<Failures,ProductEntity>>call()=>homeDomainRepo.product();
}