import 'package:flutter/material.dart';
import 'package:paymentapp/core/constant/text_app.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';
import 'package:paymentapp/core/navigation/navigation_manager.dart';
import 'package:paymentapp/core/utils/shared_widget/custom_abb_bar.dart';
import 'package:paymentapp/features/my_cart/presentation/view/widgets/payment_method_list_view.dart';

import '../../../../../core/constant/color_app.dart';
import '../../../../../core/utils/shared_widget/custom_elevated_btn.dart';
import '../../../../../core/utils/shared_widget/global_text.dart';
import '../thank_you_screen.dart';
import 'custom_credit_card.dart';

class PaymentDetialsBody extends StatefulWidget {
  const PaymentDetialsBody({super.key});

  @override
  State<PaymentDetialsBody> createState() => _PaymentDetialsBodyState();
}

class _PaymentDetialsBodyState extends State<PaymentDetialsBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
            child: CustomAppbar(text: AppText.kPaymentDetails)),
        SliverToBoxAdapter(child: 0.02.ph),
        const SliverToBoxAdapter(child: PaymentMethodListView()),
        SliverToBoxAdapter(child: 0.02.ph),
        SliverToBoxAdapter(
            child: CustomCreditCard(
          formKey: formKey,
          autoValidateMode: autoValidateMode,
        )),
        SliverToBoxAdapter(child: 0.03.ph),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.05.w, vertical: 0.02.h),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomElevatedButton(
                  onPress: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      NavigationManager.push(ThankYouScreen.id);
                    } else {
                      NavigationManager.push(ThankYouScreen.id);
                      autoValidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  btnColor: AppColor.greenColor,
                  child: GText(content: AppText.kPay, fontSize: 0.05.w)),
            ),
          ),
        ),
      ],
    );
  }
}
