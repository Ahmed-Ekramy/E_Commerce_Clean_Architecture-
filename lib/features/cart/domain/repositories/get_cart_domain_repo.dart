import 'package:dartz/dartz.dart';
import 'package:e_commerce3/features/cart/domain/entities/get_cart_entity.dart';
import '../../../../core/utils/failures.dart';

abstract class GetCartDomainRepo{
  Future<Either<Failures,GetCartEntity>>getCart();
  Future<Either<Failures,GetCartEntity>>deleteItem(String id);
  Future<Either<Failures,GetCartEntity>>upDate(String id,int count);
}