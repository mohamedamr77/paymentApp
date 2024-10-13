// PayPal payment process
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

import '../../../data/model/paypal/amount_transactions_model.dart';
import '../../../data/model/paypal/item_list_model.dart';

void processPaypalPayment(BuildContext context) {
  var amount = AmountTransactionsModel(
    currency: 'USD',
    details: DetailsAmountTransactionsModel(
      shipping: "0",
      shippingDiscount: 0,
      subtotal: "100",
    ),
    total: "100",
  );
  List<OrderItemModel> orders = [
    OrderItemModel(name: "Apple", quantity: 10, price: "4", currency: "USD"),
    OrderItemModel(name: "Apple", quantity: 10, price: "4", currency: "USD"),
    OrderItemModel(name: "Apple", quantity: 10, price: "4", currency: "USD"),
    OrderItemModel(name: "Apple", quantity: 10, price: "4", currency: "USD"),
  ];
  var itemList = ItemListModel(items: orders);

  Navigator.of(context).push(MaterialPageRoute(
    builder: (BuildContext context) => PaypalCheckoutView(
      sandboxMode: true,
      clientId: "YOUR CLIENT ID",
      secretKey: "YOUR SECRET KEY",
      transactions: [
        {
          "amount": amount.toJson(),
          "description": "The payment transaction description.",
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
        if (kDebugMode) {
          print('cancelled:');
        }
        Navigator.pop(context);
      },
    ),
  ));
}