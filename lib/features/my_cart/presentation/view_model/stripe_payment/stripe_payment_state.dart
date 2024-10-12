abstract class StripePaymentState{}

class StripePaymentInitialState extends StripePaymentState{}
class StripePaymentLoadingState extends StripePaymentState{}
class StripePaymentSuccessState extends StripePaymentState{}
class StripePaymentFaliureState extends StripePaymentState{
  final String errorMessage;

  StripePaymentFaliureState({required this.errorMessage});

}