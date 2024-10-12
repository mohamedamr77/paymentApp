import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymentapp/features/my_cart/presentation/view/widgets/cart_body.dart';

import '../../data/repo/checkout_repo_implement.dart';
import '../view_model/stripe_payment/stripe_payment_cubit.dart';

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
