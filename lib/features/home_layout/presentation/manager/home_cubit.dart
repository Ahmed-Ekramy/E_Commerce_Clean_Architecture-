import 'package:e_commerce3/features/home_layout/data/data_sources/home_dto.dart';
import 'package:e_commerce3/features/home_layout/data/repositories/home_data_repo.dart';
import 'package:e_commerce3/features/home_layout/domain/entities/get_fav_entity.dart';
import 'package:e_commerce3/features/home_layout/domain/entities/product_entity.dart';
import 'package:e_commerce3/features/home_layout/domain/use_cases/add_cart_use_case.dart';
import 'package:e_commerce3/features/home_layout/domain/use_cases/add_fav_use_case.dart';
import 'package:e_commerce3/features/home_layout/domain/use_cases/get_fav_use_case.dart';
import 'package:e_commerce3/features/home_layout/domain/use_cases/product_use_case.dart';
import 'package:e_commerce3/features/home_layout/presentation/pages/tabs/category_tab.dart';
import 'package:e_commerce3/features/home_layout/presentation/pages/tabs/fav_tab.dart';
import 'package:e_commerce3/features/home_layout/presentation/pages/tabs/prof_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/app_images.dart';
import '../../domain/entities/brand_entity.dart';
import '../../domain/entities/cat_entity.dart';
import '../../domain/repositories/home_domain_repo.dart';
import '../../domain/use_cases/brand_use_case.dart';
import '../../domain/use_cases/cat_use_case.dart';
import '../pages/tabs/home_tab.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeDto homeDto;
  HomeCubit(this.homeDto) : super(HomeInitial());
  static HomeCubit get(context)=>BlocProvider.of(context);
  List<Widget>tabs=[const HomeTab(),const CatTab(),const FavTab(),const ProfTab()];
   int currentIndex=0;
  int numOfItemsInCart = 0;

  void changNavBar(int value){
     currentIndex=value;
     emit(ChangNavState());
   }
  List<String> sliders = [
    AppImages.sliderOne,
    AppImages.sliderTwo,
    AppImages.sliderThree
  ];
  List<CatDataEntity> categories = [];
  List<BrandDataEntity> brands = [];
  List<ProductDataEntity> products = [];
  List<DataGetFav> favList = [];
  void cat() async {
    emit(CatLoadingState());
    HomeDomainRepo homeDomainRepo = HomeDataRepo(homeDto);
    CatUseCase catUseCase = CatUseCase(homeDomainRepo);
    var result = await catUseCase.call();
    result.fold((l) => emit(CatFailureState(l.message)),
        (r) {
          categories = r.data ?? [];
          emit(CatSuccessState(r));
        });
  }
  void brand() async {
    HomeDomainRepo homeDomainRepo = HomeDataRepo(homeDto);
    BrandUseCase brandUseCase = BrandUseCase(homeDomainRepo);
    var result = await brandUseCase.call();
    result.fold((l) => emit(BrandFailureState(l.message)),
        (r) {
          brands = r.data ?? [];
          emit(BrandSuccessState(r));
        });
  }
  void product() async {
    HomeDomainRepo homeDomainRepo = HomeDataRepo(homeDto);
    ProductUseCase productUseCase = ProductUseCase(homeDomainRepo);
    var result = await productUseCase.call();
    result.fold((l) => emit(ProductFailureState(l.message)),
        (r) {
          products = r.data ?? [];
          emit(ProductSuccessState(r));
        });
  }
  void addToCart(String productId)async{
    emit(AddCartLoadingState());
    HomeDomainRepo homeDomainRepo = HomeDataRepo(homeDto);
    AddCartUseCase addCartUseCase=AddCartUseCase(homeDomainRepo);
    var result= await addCartUseCase.call(productId);
    result.fold((l) => emit(AddCartFailureState(l.message)), (r) {
      numOfItemsInCart=r.numOfCartItems??0;
      emit(AddCartSuccessState(r));
    });

  }
  void addFav(String productId)async{
    emit(AddFavLoadingState());
    HomeDomainRepo homeDomainRepo = HomeDataRepo(homeDto);
    AddFavUseCase addFavUseCase=AddFavUseCase(homeDomainRepo);
    var result= await addFavUseCase.addFav(productId);
    result.fold((l) => emit(AddFavFailureState(l.message)), (r) {
      emit(AddFavSuccessState(r));
    });

  }
  void getFav()async{
    emit(GetFavLoadingState());
    HomeDomainRepo homeDomainRepo = HomeDataRepo(homeDto);
    GetFavUseCase getFavUseCase=GetFavUseCase(homeDomainRepo);
    var result= await getFavUseCase.call();
    result.fold((l) {
      emit(GetFavFailureState(l.message));
    }, (r) {
      favList=r.data??[];
      emit(GetFavSuccessState(r));
    });

  }
}
