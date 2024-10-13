import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';
import 'package:paymentapp/features/my_cart/data/model/paypal/amount_transactions_model.dart';
import 'package:paymentapp/features/my_cart/data/model/paypal/item_list_model.dart';
import 'package:paymentapp/features/my_cart/presentation/view/widgets/payment_method_list_view.dart';
import 'package:paymentapp/features/my_cart/presentation/view_model/stripe_payment/stripe_payment_cubit.dart';
import 'package:paymentapp/features/my_cart/presentation/view_model/stripe_payment/stripe_payment_state.dart';

import '../../../../../core/constant/color_app.dart';
import '../../../../../core/constant/text_app.dart';
import '../../../../../core/utils/shared_widget/custom_elevated_btn.dart';
import '../../../../../core/utils/shared_widget/global_text.dart';
import '../../../data/model/payment_intent_input_model.dart';
import '../../../data/repo/checkout_repo_implement.dart';

class PaymentMethodBottomSheetBody extends StatelessWidget {
  const PaymentMethodBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StripePaymentCubit(CheckOutRepoImplement()),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          0.01.ph,
          Divider(
            thickness: 2,
            indent: 0.3.w,
            endIndent: 0.3.w,
          ),
          0.06.ph,
          const PaymentMethodListView(),
          0.06.ph,
          BlocConsumer<StripePaymentCubit, StripePaymentState>(
            builder: (context, state) {
              return state is StripePaymentLoadingState
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : CustomElevatedButton(
                      onPress: () {
                        // BlocProvider.of<StripePaymentCubit>(context)
                        //     .makeStripePayment(
                        //         paymentIntentInputModel:
                        //             PaymentIntentInputModel(
                        //                 amount: '100',
                        //                 currency: 'USD',
                        //                 customerId: 'cus_R1HkyfT0NebIzz'));

                        var amount =AmountTransactionsModel(
                          currency: 'USD',
                          details:  DetailsAmountTransactionsModel(
                            shipping: "0",
                            shippingDiscount: 0,
                            subtotal: "100",
                          ),
                          total: "100",
                        );

                        List<OrderItemModel> orders=[
                          OrderItemModel(name: "Apple", quantity: 10, price: "4", currency: "USD"),
                          OrderItemModel(name: "Apple", quantity: 10, price: "4", currency: "USD"),
                          OrderItemModel(name: "Apple", quantity: 10, price: "4", currency: "USD"),
                          OrderItemModel(name: "Apple", quantity: 10, price: "4", currency: "USD"),
                        ];


                        var itemList = ItemListModel(items: orders,);
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => PaypalCheckoutView(
                            sandboxMode: true,
                            clientId: "YOUR CLIENT ID",
                            secretKey: "YOUR SECRET KEY",
                            transactions:  [
                              {
                                // description order from price
                                "amount": amount.toJson(),
                                "description": "The payment transaction description.",
                                // "payment_options": {
                                //   "allowed_payment_method":
                                //       "INSTANT_FUNDING_SOURCE"
                                // },
                                "item_list": itemList.toJson(),
                              }
                            ],
                            note: "Contact us for any questions on your order.",
                            onSuccess: (Map params) async {
                              log("onSuccess: $params");
                              Navigator.pop(context);
                            },
                            onError: (error) {
                              log("onError: $error");
                              Navigator.pop(context);
                            },
                            onCancel: () {
                              print('cancelled:');
                              Navigator.pop(context);
                            },
                          ),
                        ));

                      },
                      btnColor: AppColor.greenColor,
                      child: GText(content: AppText.kPay, fontSize: 0.05.w));
            },
            listener: (BuildContext context, StripePaymentState state) {
              if (state is StripePaymentSuccessState) {
                Navigator.of(context).pop();
              }
              if (state is StripePaymentFaliureState) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                  state.errorMessage,
                  style: const TextStyle(color: Colors.white),
                )));
              }
            },
          ),
          0.04.ph,
        ],
      ),
    );
  }
}
