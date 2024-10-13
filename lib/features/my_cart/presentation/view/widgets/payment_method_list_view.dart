import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';
import 'package:paymentapp/features/my_cart/presentation/view/widgets/payment_item.dart';
import 'package:paymentapp/features/my_cart/presentation/view_model/payment_method/payment_method_state.dart';

import '../../../data/model/payment_method_use_in_ui_before_app_payment/payment_mehod_list.dart';
import '../../view_model/payment_method/payment_method_cubit.dart';

class PaymentMethodListView extends StatelessWidget {
  const PaymentMethodListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentMethodCubit, PaymentMethodState>(
      builder: (context, state) {
        return SizedBox(
            height: 0.07.h,
            child: Center(
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Center(
                    child: Padding(
                      padding: index == 0
                          ? const EdgeInsets.only(left: 10)
                          : index == paymentMethodList.length - 1
                              ? const EdgeInsets.only(right: 10)
                              : EdgeInsets.zero,
                      child: InkWell(
                        onTap: () {
                          BlocProvider.of<PaymentMethodCubit>(context)
                              .paymentMethodSelected(index: index);
                        },
                        child: PaymentItem(
                          isActive: BlocProvider.of<PaymentMethodCubit>(context)
                                  .paymentMethodSelect ==
                              index,
                          image: paymentMethodList[index].image,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return 0.05.pw;
                },
                itemCount: paymentMethodList.length,
              ),
            ));
      },
    );
  }
}
