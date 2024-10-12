import 'package:paymentapp/core/helper/api_service.dart';
import 'package:paymentapp/core/utils/api_keys.dart';
import 'package:paymentapp/features/my_cart/data/model/payment_intenet_model.dart';
import 'package:paymentapp/features/my_cart/data/model/payment_intent_input_model.dart';

class StripeService{
   final ApiService apiService=ApiService();
  Future<PaymentIntentModel> createPaymentIntent({required PaymentIntentInputModel paymentIntentInputModel})async{
   var response =await apiService.post(
         body: paymentIntentInputModel.toJson(),
         url: "https://api.stripe.com/v1/payment_intents",
       token:  ApiKeys.secretKey
      );

   var paymentIntentModel =PaymentIntentModel.fromJson(response.data);

   return paymentIntentModel;
  }

}