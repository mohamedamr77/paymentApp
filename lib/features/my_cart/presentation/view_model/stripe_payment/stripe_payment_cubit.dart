import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymentapp/features/my_cart/presentation/view_model/stripe_payment/stripe_payment_state.dart';

import '../../../data/repo/checkout_repo.dart';

class StripePaymentCubit extends Cubit<StripePaymentState> {
  StripePaymentCubit(this.checkOutRepo) : super(StripePaymentInitialState());
  final CheckOutRepo checkOutRepo;

  Future makeStripePayment({required paymentIntentInputModel}) async {
    emit(StripePaymentLoadingState());
    var result = await checkOutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);
    result.fold((error) {
      emit(StripePaymentFaliureState(errorMessage: error.errorMessage));
    }, (success) {
      emit(StripePaymentSuccessState());
    });
  }
}
