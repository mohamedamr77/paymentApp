import 'package:flutter/material.dart';
import 'package:paymentapp/core/constant/text_app.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';
import 'package:paymentapp/core/utils/shared_widget/custom_abb_bar.dart';
import 'package:paymentapp/features/my_cart/presentation/view/widgets/payment_method_list_view.dart';

class PaymentDetialsBody extends StatelessWidget {
  const PaymentDetialsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        const CustomAppbar(text: AppText.kPaymentDetails),
        0.02.ph,
        const PaymentMethodListView(),
      ],
    );
  }
}
