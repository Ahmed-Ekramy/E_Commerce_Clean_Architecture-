import 'package:e_commerce3/features/cart/presentation/manager/get_cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_color.dart';
import '../manager/get_cart_state.dart';
import '../widgets/get_cart_item.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetCartCubit, GetCartState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is GetCartSuccess) {
          return Scaffold(
              bottomNavigationBar: Container(
                height: 70.h,
                color: Colors.greenAccent,
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Total Price"),
                          Text("${state.getCartEntity.data?.totalCartPrice} EGP")
                        ],
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primary),
                          onPressed: () {

                          },
                          child: Text("Check Out"))
                    ],
                  ),
                ),
              ),
              body: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                itemBuilder: (context, index) => GetCartItem(
                  state.getCartEntity.data!.products![index]
                ),
                itemCount: state.getCartEntity.numOfCartItems,
              ))
            ],
          ));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

}
