import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';
import 'package:paymentapp/features/my_cart/presentation/view_model/payment_method/payment_method_state.dart';

import '../../../../../core/constant/color_app.dart';
import '../../../../../core/constant/text_app.dart';
import '../../../../../core/utils/shared_widget/custom_elevated_btn.dart';
import '../../../../../core/utils/shared_widget/global_text.dart';
import '../../view_model/payment_method/payment_method_cubit.dart';
import '../../view_model/stripe_payment/stripe_payment_cubit.dart';
import '../../view_model/stripe_payment/stripe_payment_state.dart';
import '../process_payment/process_on_payment_button.dart';

class PaymentButtonBottomSheet extends StatelessWidget {
  const PaymentButtonBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentMethodCubit, PaymentMethodState>(
      builder: (context, state) {
        return CustomElevatedButton(
          onPress: processOnPaymentButton(context),
          btnColor: AppColor.greenColor,
          child: GText(content: AppText.kPay, fontSize: 0.05.w),
        );
      },
    );
  }
}

/*
BlocConsumer<StripePaymentCubit, StripePaymentState>(
      builder: (context, state) {
        return state is StripePaymentLoadingState
            ? const Center(child: CircularProgressIndicator())
            : CustomElevatedButton(
          onPress: processOnPaymentButton(context),
          btnColor: AppColor.greenColor,
          child: GText(content: AppText.kPay, fontSize: 0.05.w),
        );
      },
      listener: (BuildContext context, StripePaymentState state) {
        if (state is StripePaymentSuccessState) {
          Navigator.of(context).pop();
        } else if (state is StripePaymentFaliureState) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.errorMessage, style: const TextStyle(color: Colors.white)),
          ));
        }
      },
    );
 */