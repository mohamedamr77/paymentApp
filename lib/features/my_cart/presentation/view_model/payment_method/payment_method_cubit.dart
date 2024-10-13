import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymentapp/features/my_cart/presentation/view_model/payment_method/payment_method_state.dart';

class PaymentMethodCubit extends Cubit<PaymentMethodState> {
  PaymentMethodCubit() : super(PaymentMethodInitialState());
  int paymentMethodSelect=0 ;

  paymentMethodSelected({required int index}){
      paymentMethodSelect =index;
    emit(ChangePaymentMethodState());
  }

}
