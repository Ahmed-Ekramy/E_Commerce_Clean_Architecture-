import 'package:e_commerce3/features/home_layout/data/data_sources/home_dto.dart';
import 'package:e_commerce3/features/home_layout/data/repositories/home_data_repo.dart';
import 'package:e_commerce3/features/home_layout/presentation/pages/category_tab.dart';
import 'package:e_commerce3/features/home_layout/presentation/pages/fav_tab.dart';
import 'package:e_commerce3/features/home_layout/presentation/pages/home_tab.dart';
import 'package:e_commerce3/features/home_layout/presentation/pages/prof_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/repositories/home_domain_repo.dart';
import '../../domain/use_cases/brand_use_case.dart';
import '../../domain/use_cases/cat_use_case.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeDto homeDto;
  HomeCubit(this.homeDto) : super(HomeInitial());
  static HomeCubit get(context)=>BlocProvider.of(context);
  List<Widget>tabs=[const CatTab(),const FavTab(),const HomeTab(),const ProfTab()];
   int currentIndex=0;
   void changNavBar(int value){
     currentIndex=value;
     emit(ChangNavState());
   }
  void cat() async {
    emit(CatLoadingState());
    HomeDomainRepo homeDomainRepo = HomeDataRepo(homeDto);
    CatUseCase catUseCase = CatUseCase(homeDomainRepo);
    var result = await catUseCase.call();
    result.fold((l) => emit(CatFailureState(l.message)),
        (r) => emit(CatSuccessState(r)));
  }
  void brand() async {
    HomeDomainRepo homeDomainRepo = HomeDataRepo(homeDto);
    BrandUseCase brandUseCase = BrandUseCase(homeDomainRepo);
    var result = await brandUseCase.call();
    result.fold((l) => emit(BrandFailureState(l.message)),
        (r) => emit(BrandSuccessState(r)));
  }
}
