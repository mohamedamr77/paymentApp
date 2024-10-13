import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';
import 'package:paymentapp/features/my_cart/presentation/view/widgets/payment_button_bottom_sheet.dart';
import 'package:paymentapp/features/my_cart/presentation/view/widgets/payment_method_list_view.dart';
import 'package:paymentapp/features/my_cart/presentation/view_model/stripe_payment/stripe_payment_cubit.dart';
import 'package:paymentapp/features/my_cart/presentation/view_model/stripe_payment/stripe_payment_state.dart';
import '../../../../../core/constant/color_app.dart';
import '../../../../../core/constant/text_app.dart';
import '../../../../../core/utils/shared_widget/custom_elevated_btn.dart';
import '../../../../../core/utils/shared_widget/global_text.dart';
import '../../../data/repo/checkout_repo_implement.dart';
import '../../view_model/payment_method/payment_method_cubit.dart';
import '../process_payment/process_on_payment_button.dart';


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
          const PaymentButtonBottomSheet(),
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


}