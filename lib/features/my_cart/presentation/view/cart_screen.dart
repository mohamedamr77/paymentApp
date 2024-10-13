import 'package:flutter/material.dart';
import 'package:paymentapp/features/my_cart/presentation/view/widgets/cart_body.dart';


class CartScreen extends StatelessWidget {
  static const id = '/';

  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CartBody(),
    );
  }
}
