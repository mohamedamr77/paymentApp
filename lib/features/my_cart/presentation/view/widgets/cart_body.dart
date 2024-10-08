import 'package:flutter/material.dart';
import 'package:paymentapp/core/constant/color_app.dart';
import 'package:paymentapp/core/constant/text_app.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';
import 'package:paymentapp/core/utils/shared_widget/custom_elevated_btn.dart';
import 'package:paymentapp/core/utils/shared_widget/global_text.dart';
import 'basket_items.dart';
import 'custom_abb_bar.dart';
import 'custom_text_with_price.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
      child: Column(
        children: [
          0.017.ph,
          const CustomAppbar(),
          0.02.ph,
          const BasketItems(),
          0.015.ph,
          const CustomTextWithPrice(
            text: AppText.kOrderSubtotal
            ,
            price: "\$42.97",
      
          ),
          const CustomTextWithPrice(
            text: AppText.kDiscount,
            price: "\$0",
      
          ),
          const CustomTextWithPrice(
            text: AppText.kShipping
            ,
            price: "\$8",
      
          ),
          0.01.ph,
          Divider(
            indent: 0.1.w,
            endIndent: 0.1.w,
          ),
          0.02.ph,
          CustomTextWithPrice(
            text: AppText.kTotal
            ,
            price: "\$50.97",
            fontWeightPrice: FontWeight.bold,
            fontWeightText: FontWeight.bold,
            fontSizeText: 0.05.w,
            fontSizePrice: 0.05.w,
      
          ),
          0.02.ph,
          CustomElevatedButton(onPress: (){}, btnColor: AppColor.greenColor, child: GText(
              content: AppText.kCompletePayment,
              fontSize: 0.05.w
          ))
        ],
      ),
    );
  }
}
