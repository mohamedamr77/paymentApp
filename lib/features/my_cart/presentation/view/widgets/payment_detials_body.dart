import 'package:flutter/material.dart';
import 'package:paymentapp/core/constant/text_app.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';
import 'package:paymentapp/core/utils/shared_widget/custom_abb_bar.dart';
import 'package:paymentapp/features/my_cart/presentation/view/widgets/payment_method_list_view.dart';

import '../../../../../core/constant/color_app.dart';
import '../../../../../core/navigation/navigation_manager.dart';
import '../../../../../core/utils/shared_widget/custom_elevated_btn.dart';
import '../../../../../core/utils/shared_widget/global_text.dart';
import '../payment_details_screen.dart';
import 'custom_credit_card.dart';

class PaymentDetialsBody extends StatelessWidget {
  const PaymentDetialsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: CustomAppbar(text: AppText.kPaymentDetails)),
        SliverToBoxAdapter(child: 0.02.ph),
        const SliverToBoxAdapter(child: PaymentMethodListView()),
        SliverToBoxAdapter(child: 0.02.ph),
        const SliverToBoxAdapter(child: CustomCreditCard()),
        SliverToBoxAdapter(child: 0.03.ph),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 0.05.w),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomElevatedButton(
                  onPress: (){
                  },
                  btnColor: AppColor.greenColor,
                  child: GText(
                      content: AppText.kPay,
                      fontSize: 0.05.w
                  )),
            ),
          ),
        ),

      ],
    );
  }
}
