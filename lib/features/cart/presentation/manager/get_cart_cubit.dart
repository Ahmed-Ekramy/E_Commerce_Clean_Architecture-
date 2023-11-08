
import 'package:e_commerce3/features/cart/data/data_sources/get_cart_dto.dart';
import 'package:e_commerce3/features/cart/data/models/get_cart_model.dart';
import 'package:e_commerce3/features/cart/data/repositories/get_cart_data_repo.dart';
import 'package:e_commerce3/features/cart/domain/use_cases/delete_use_case.dart';
import 'package:e_commerce3/features/cart/domain/use_cases/get_cart_use_case.dart';
import 'package:e_commerce3/features/cart/domain/use_cases/update_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/get_cart_entity.dart';
import '../../domain/repositories/get_cart_domain_repo.dart';
import 'get_cart_state.dart';

class GetCartCubit extends Cubit<GetCartState> {
  GetCartDto getCartDto;
  GetCartCubit(this.getCartDto) : super(GetCartInitial());
  List<DataGetCart>cartList=[];
 static GetCartCubit get(context)=>BlocProvider.of(context);
  void getCart ()async{
    emit(GetCartLoading());
    GetCartDomainRepo getCartDomainRepo=GetCartDataRepo(getCartDto);
    GetCartUseCase getCartUseCase=GetCartUseCase(getCartDomainRepo);
   var result= await getCartUseCase.call();
   result.fold((l) => emit(GetCartFailure(l.message)),
           (r) {

     emit(GetCartSuccess(r));
   });
  }
  void delCart(String id)async{
    emit(DelLoading());
    GetCartDomainRepo getCartDomainRepo=GetCartDataRepo(getCartDto);
    DeleteUseCase deleteUseCase=DeleteUseCase(getCartDomainRepo);
   var result= await deleteUseCase.deleteItem(id);
   result.fold((l) => emit(DelFailure(l.message)), (r) => emit(GetCartSuccess(r)));
  }
  void upDate(String id,int count)async{
    emit(UpDateLoading());
    GetCartDomainRepo getCartDomainRepo=GetCartDataRepo(getCartDto);
    UpDateUseCase upDateUseCase=UpDateUseCase(getCartDomainRepo);
    var result=await upDateUseCase.upDate(id, count);
    result.fold((l) => emit(UpDateFailure(l.message)), (r) =>emit(GetCartSuccess(r)));
  }
}
