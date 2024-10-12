import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:paymentapp/core/helper/api_service.dart';
import 'package:paymentapp/core/utils/api_keys.dart';
import 'package:paymentapp/features/my_cart/data/model/payment_intent_input_model.dart';
import '../../../features/my_cart/data/model/Payment_intent_model.dart';

class StripeService{
   final ApiService apiService=ApiService();
  Future<PaymentIntentModel> createPaymentIntent({required PaymentIntentInputModel paymentIntentInputModel})async{
   var response =await apiService.post(
         body: paymentIntentInputModel.toJson(),
         url: "https://api.stripe.com/v1/payment_intents",
       token:  ApiKeys.secretKey,
       contentType: "application/x-www-form-urlencoded"
      );

   var paymentIntentModel =PaymentIntentModel.fromJson(response.data);

   return paymentIntentModel;
  }

   Future initPaymentSheet({required String paymentIntentClientSecret })async{
   await   Stripe.instance.initPaymentSheet(paymentSheetParameters:  SetupPaymentSheetParameters(
      paymentIntentClientSecret: paymentIntentClientSecret,
      merchantDisplayName: "Mohamed amr", // the name of the business
    ));
   }

   Future displayPaymentSheet () async{
   await Stripe.instance.presentPaymentSheet();
   }


   // to meke the before three method
   Future makePayment({required PaymentIntentInputModel paymentIntentInputModel}) async{

    var paymentIntentModel =await createPaymentIntent(paymentIntentInputModel: paymentIntentInputModel);

    await initPaymentSheet(paymentIntentClientSecret: paymentIntentModel.clientSecret!);

    await displayPaymentSheet();

   }
}