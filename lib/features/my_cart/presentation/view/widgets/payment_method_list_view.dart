import 'package:flutter/material.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';
import 'package:paymentapp/features/my_cart/presentation/view/widgets/payment_item.dart';

import '../../../data/model/payment_mehod_list.dart';

class PaymentMethodListView extends StatelessWidget {
  const PaymentMethodListView({super.key});

  @override
  Widget build(BuildContext context) {
    return      SizedBox(
        height: 0.07.h,
        child: Center(
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Center(
                child: Padding(
                  padding: index ==0 ? const EdgeInsets.only(left: 10) : index ==paymentMethodList.length-1 ?  const EdgeInsets.only(right: 10) : EdgeInsets.zero,
                  child: PaymentItem(
                    isActive: paymentMethodList[index].isActive,
                    image: paymentMethodList[index].image,
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return 0.05.pw;
            },
            itemCount: paymentMethodList.length,
          ),
        )
    );
  }
}
