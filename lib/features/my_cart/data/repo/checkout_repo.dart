import 'package:dartz/dartz.dart';
import 'package:paymentapp/core/error/faliure.dart';
import 'package:paymentapp/features/my_cart/data/model/Payment_intent_model.dart';
import 'package:paymentapp/features/my_cart/data/model/payment_intent_input_model.dart';

abstract class CheckOutRepo{

    Future<Either<Failure,void>> makePayment({required PaymentIntentInputModel paymentIntentInputModel });
}