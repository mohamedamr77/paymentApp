import 'package:flutter/material.dart';

import '../../features/my_cart/presentation/view/cart_screen.dart';
import '../../features/my_cart/presentation/view/payment_details_screen.dart';
import '../../features/my_cart/presentation/view/thank_you_screen.dart';

class AppRouter {
  static Map<String, Widget Function(dynamic)> routes = {
    PaymentDetailsScreen.id: (context) => const PaymentDetailsScreen(),
    ThankYouScreen.id: (context) => const ThankYouScreen(),
    CartScreen.id: (context) => const CartScreen(),
  };
}
