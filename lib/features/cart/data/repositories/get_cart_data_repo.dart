import 'package:dartz/dartz.dart';
import 'package:e_commerce3/core/utils/failures.dart';
import 'package:e_commerce3/features/cart/data/data_sources/get_cart_dto.dart';
import 'package:e_commerce3/features/cart/domain/entities/get_cart_entity.dart';
import 'package:e_commerce3/features/cart/domain/repositories/get_cart_domain_repo.dart';

class GetCartDataRepo extends GetCartDomainRepo {
  GetCartDto getCartDto;

  GetCartDataRepo(this.getCartDto);

  @override
  Future<Either<Failures, GetCartEntity>> getCart() => getCartDto.getCart();

  @override
  Future<Either<Failures, GetCartEntity>> deleteItem(String id) =>
      getCartDto.deleteItem(id);

  @override
  Future<Either<Failures, GetCartEntity>> upDate(String id, int count)
  =>getCartDto.upDate(id, count);
}
