import 'package:dartz/dartz.dart';
import 'package:e_commerce3/features/sign_up/data/models/sign_up_model.dart';

import '../../../../core/utils/failures.dart';
import '../models/user_model.dart';

abstract class SignUpDto{
  Future<Either<Failures,SignUpModel>> signUp(UserModel userModel);
}