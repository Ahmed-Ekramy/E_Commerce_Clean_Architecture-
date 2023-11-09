import 'package:dartz/dartz.dart';
import 'package:e_commerce3/core/utils/failures.dart';
import 'package:e_commerce3/features/home_layout/domain/repositories/home_domain_repo.dart';

import '../entities/get_fav_entity.dart';

class GetFavUseCase{
  HomeDomainRepo homeDomainRepo;

  GetFavUseCase(this.homeDomainRepo);

  Future<Either<Failures,GetFavEntity>>call()=>homeDomainRepo.getFav();

}