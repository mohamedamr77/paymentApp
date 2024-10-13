// Stripe payment process
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/payment_intent_input_model.dart';
import '../../view_model/stripe_payment/stripe_payment_cubit.dart';

void processStripePayment(BuildContext context) {
  BlocProvider.of<StripePaymentCubit>(context).makeStripePayment(
    paymentIntentInputModel: PaymentIntentInputModel(
      amount: '100',
      currency: 'USD',
      customerId: 'cus_R1HkyfT0NebIzz',
    ),
  );
}