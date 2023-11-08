import 'package:dartz/dartz.dart';
import 'package:e_commerce3/core/utils/failures.dart';
import 'package:e_commerce3/features/cart/domain/entities/get_cart_entity.dart';
import 'package:e_commerce3/features/cart/domain/repositories/get_cart_domain_repo.dart';

class UpDateUseCase {
  GetCartDomainRepo getCartDomainRepo;

  UpDateUseCase(this.getCartDomainRepo);

  Future<Either<Failures, GetCartEntity>> upDate(String id, int count) =>
      getCartDomainRepo.upDate(id, count);
}
