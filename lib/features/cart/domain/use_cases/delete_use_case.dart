import 'package:dartz/dartz.dart';
import 'package:e_commerce3/core/utils/failures.dart';
import 'package:e_commerce3/features/cart/domain/entities/get_cart_entity.dart';
import 'package:e_commerce3/features/cart/domain/repositories/get_cart_domain_repo.dart';

class DeleteUseCase{
  GetCartDomainRepo getCartDomainRepo;
  DeleteUseCase(this.getCartDomainRepo);
  Future<Either<Failures,GetCartEntity>>deleteItem(String id)=>getCartDomainRepo.deleteItem(id);
}