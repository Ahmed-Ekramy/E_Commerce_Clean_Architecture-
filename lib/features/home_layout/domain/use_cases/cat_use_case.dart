import 'package:dartz/dartz.dart';
import 'package:e_commerce3/core/utils/failures.dart';
import 'package:e_commerce3/features/home_layout/domain/entities/cat_entity.dart';
import '../repositories/home_domain_repo.dart';
class CatUseCase{
  HomeDomainRepo homeDomainRepo;
  CatUseCase(this.homeDomainRepo);
  Future<Either<Failures,CategoryEntity>>call()=>homeDomainRepo.cat();
}