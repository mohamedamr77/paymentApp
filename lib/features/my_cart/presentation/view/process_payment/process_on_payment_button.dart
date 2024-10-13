// Logic for the payment button press
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymentapp/features/my_cart/presentation/view/process_payment/process_paypal_payment.dart';
import 'package:paymentapp/features/my_cart/presentation/view/process_payment/process_stripe_payment.dart';
import '../../view_model/payment_method/payment_method_cubit.dart';

void Function() processOnPaymentButton(BuildContext context) {
  final paymentMethodCubit = BlocProvider.of<PaymentMethodCubit>(context);
  if (paymentMethodCubit.paymentMethodSelect == 1) {
    return () => processPaypalPayment(context);
  } else {
    return () => processStripePayment(context);
  }
}