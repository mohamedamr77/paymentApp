import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymentapp/features/my_cart/presentation/view_model/payment_method/payment_method_state.dart';

import '../../../data/repo/checkout_repo.dart';

class PaymentMethodCubit extends Cubit<PaymentMethodState> {
  PaymentMethodCubit(this.checkOutRepo) : super(PaymentMethodInitialState());
  int paymentMethodSelect = 0;
  final CheckOutRepo checkOutRepo;
  paymentMethodSelected({required int index}) {
    paymentMethodSelect = index;
    emit(ChangePaymentMethodState());
  }

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
