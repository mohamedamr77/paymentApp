import 'package:flutter/material.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';
import 'package:paymentapp/features/my_cart/presentation/view/widgets/payment_button_bottom_sheet.dart';
import 'package:paymentapp/features/my_cart/presentation/view/widgets/payment_method_list_view.dart';

class PaymentMethodBottomSheetBody extends StatelessWidget {
  const PaymentMethodBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildDivider(),
        const SizedBox(
            height: 10), // Same as 0.06.ph if it's equal to a fixed height
        const PaymentMethodListView(),
        const SizedBox(height: 10),
        const PaymentButtonBottomSheet(),
        const SizedBox(height: 20),
      ],
    );
  }

  // Widget for the divider
  Widget _buildDivider() {
    return Column(
      children: [
        const SizedBox(
            height: 5), // Same as 0.01.ph if it's equal to a fixed height
        Divider(
          thickness: 2,
          indent: 0.3.w,
          endIndent: 0.3.w,
        ),
      ],
    );
  }
}
