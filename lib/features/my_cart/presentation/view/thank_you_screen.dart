import 'package:flutter/material.dart';
import 'package:paymentapp/features/my_cart/presentation/view/widgets/thank_you_body.dart';

class ThankYouScreen extends StatelessWidget {
  static const String id = "/ThankYouScreen";
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ThankYouBody(),
    );
  }
}
