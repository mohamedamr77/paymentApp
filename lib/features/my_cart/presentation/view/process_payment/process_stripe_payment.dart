// Stripe payment process
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymentapp/features/my_cart/presentation/view_model/payment_method/payment_method_cubit.dart';

import '../../../data/model/payment_intent_input_model.dart';

void processStripePayment(BuildContext context) {
  BlocProvider.of<PaymentMethodCubit>(context).makeStripePayment(
    paymentIntentInputModel: PaymentIntentInputModel(
      amount: '100',
      currency: 'USD',
      customerId: 'cus_R1HkyfT0NebIzz',
    ),
  );
}
