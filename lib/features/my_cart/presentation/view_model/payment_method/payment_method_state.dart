abstract class PaymentMethodState {}

class PaymentMethodInitialState extends PaymentMethodState {}

class ChangePaymentMethodState extends PaymentMethodState {}

class StripePaymentLoadingState extends PaymentMethodState {}

class StripePaymentSuccessState extends PaymentMethodState {}

class StripePaymentFaliureState extends PaymentMethodState {
  final String errorMessage;

  StripePaymentFaliureState({required this.errorMessage});
}
