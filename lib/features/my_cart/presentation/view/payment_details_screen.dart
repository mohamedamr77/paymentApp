import 'package:flutter/material.dart';
import 'package:paymentapp/features/my_cart/presentation/view/widgets/payment_detials_body.dart';

class PaymentDetailsScreen extends StatelessWidget {
  static const id = '/PaymentDetailsScreen';
  const PaymentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PaymentDetialsBody(),
    );
  }
}
