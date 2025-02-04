import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:paymentapp/core/helper/api_service.dart';
import 'package:paymentapp/core/utils/api_keys.dart';
import 'package:paymentapp/features/my_cart/data/model/ephemeral_key/ephemeral_key_model.dart';
import 'package:paymentapp/features/my_cart/data/model/payment_intent_input_model.dart';
import '../../../features/my_cart/data/model/Payment_intent_model.dart';
import '../../../features/my_cart/data/model/inent_payment_sheet_input/init_payment_sheet_input_model.dart';

class StripeService {
  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntent(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var response = await apiService.post(
        body: paymentIntentInputModel.toJson(),
        url: "https://api.stripe.com/v1/payment_intents",
        token: ApiKeys.secretKey,
        contentType: "application/x-www-form-urlencoded");

    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);

    return paymentIntentModel;
  }

  Future initPaymentSheet({
    required InitPaymentSheetInputModel initPaymentSheetInputModel,
  }) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret:
          initPaymentSheetInputModel.paymentIntentClientSecret,
      customerEphemeralKeySecret: initPaymentSheetInputModel.ephemeralKeySecret,
      customerId: initPaymentSheetInputModel.customerId,
      merchantDisplayName: "Mohamed amr", // the name of the business
    ));
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  // to meke the before three method
  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(
        paymentIntentInputModel: paymentIntentInputModel);
    var ephemeralKeyModel = await createEphemeralKey(
        customerId: paymentIntentInputModel.customerId);

    var initPaymentSheetInputModel = InitPaymentSheetInputModel(
        paymentIntentClientSecret: paymentIntentModel.clientSecret!,
        ephemeralKeySecret: ephemeralKeyModel.secret!,
        customerId: paymentIntentInputModel.customerId);
    await initPaymentSheet(
      initPaymentSheetInputModel: initPaymentSheetInputModel,
    );

    await displayPaymentSheet();
  }

  Future<EphemeralKeyModel> createEphemeralKey(
      {required String customerId}) async {
    var response = await apiService.post(
        body: {
          "customer": customerId,
        },
        url: "https://api.stripe.com/v1/ephemeral_keys",
        token: ApiKeys.secretKey,
        contentType: "application/x-www-form-urlencoded",
        headers: {
          'Authorization': 'Bearer ${ApiKeys.secretKey}',
          'Stripe-Version': '2024-09-30.acacia',
        });

    var ephemeralKey = EphemeralKeyModel.fromJson(response.data);

    return ephemeralKey;
  }
}
