import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';
import 'package:paymentapp/features/my_cart/data/model/paypal/amount_transactions_model.dart';
import 'package:paymentapp/features/my_cart/data/model/paypal/item_list_model.dart';
import 'package:paymentapp/features/my_cart/presentation/view/widgets/payment_method_list_view.dart';
import 'package:paymentapp/features/my_cart/presentation/view_model/stripe_payment/stripe_payment_cubit.dart';
import 'package:paymentapp/features/my_cart/presentation/view_model/stripe_payment/stripe_payment_state.dart';

import '../../../../../core/constant/color_app.dart';
import '../../../../../core/constant/text_app.dart';
import '../../../../../core/utils/shared_widget/custom_elevated_btn.dart';
import '../../../../../core/utils/shared_widget/global_text.dart';
import '../../../data/model/payment_intent_input_model.dart';
import '../../../data/repo/checkout_repo_implement.dart';
import '../../view_model/payment_method/payment_method_cubit.dart';
import '../process_payment/process_on_payment_button.dart';
import '../process_payment/process_paypal_payment.dart';
import '../process_payment/process_stripe_payment.dart';

class PaymentMethodBottomSheetBody extends StatelessWidget {
  const PaymentMethodBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StripePaymentCubit(CheckOutRepoImplement()),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildDivider(),
          const SizedBox(height: 10), // Same as 0.06.ph if it's equal to a fixed height
          const PaymentMethodListView(),
          const SizedBox(height: 10),
          _buildPaymentButton(context),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  // Widget for the divider
  Widget _buildDivider() {
    return Column(
      children: [
        const SizedBox(height: 5), // Same as 0.01.ph if it's equal to a fixed height
        Divider(
          thickness: 2,
          indent: 0.3.w,
          endIndent: 0.3.w,
        ),
      ],
    );
  }

  // Widget for the payment button
  Widget _buildPaymentButton(BuildContext context) {
    return BlocConsumer<StripePaymentCubit, StripePaymentState>(
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
  }
}