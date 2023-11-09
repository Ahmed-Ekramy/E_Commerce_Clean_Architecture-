import 'package:dartz/dartz.dart';
import 'package:e_commerce3/core/utils/failures.dart';
import 'package:e_commerce3/features/home_layout/domain/entities/add_fav.dart';
import 'package:e_commerce3/features/home_layout/domain/repositories/home_domain_repo.dart';

class AddFavUseCase {
  HomeDomainRepo homeDomainRepo;

  AddFavUseCase(this.homeDomainRepo);

  Future<Either<Failures, AddFavEntity>> addFav(String productId) =>
      homeDomainRepo.addFav(productId);
}
