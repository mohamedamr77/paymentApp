import 'package:dartz/dartz.dart';
import 'package:paymentapp/core/error/faliure.dart';
import 'package:paymentapp/core/service/stripe_service/stripe_servcie.dart';
import 'package:paymentapp/features/my_cart/data/model/payment_intent_input_model.dart';
import 'package:paymentapp/features/my_cart/data/repo/checkout_repo.dart';

class CheckOutRepoImplement implements CheckOutRepo {
  final StripeService stripeService = StripeService();

  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
