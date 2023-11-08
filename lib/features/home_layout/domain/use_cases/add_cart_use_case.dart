import 'package:dartz/dartz.dart';
import 'package:e_commerce3/core/utils/failures.dart';
import 'package:e_commerce3/features/home_layout/domain/entities/add_cart_entity.dart';

import '../repositories/home_domain_repo.dart';

class AddCartUseCase{
  HomeDomainRepo homeDomainRepo;
  AddCartUseCase(this.homeDomainRepo);
  Future<Either<Failures,AddCartEntity>>call(String productId)=>homeDomainRepo.addToCart( productId);

}