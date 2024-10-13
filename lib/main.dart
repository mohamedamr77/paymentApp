import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:paymentapp/core/utils/api_keys.dart';
import 'package:paymentapp/features/my_cart/presentation/view/cart_screen.dart';

import 'core/constant/const_variables.dart';
import 'core/navigation/navigation_manager.dart';
import 'core/navigation/routes.dart';
import 'features/my_cart/presentation/view_model/payment_method/payment_method_cubit.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publishablekey;
  runApp(BlocProvider(
    create: (context) => PaymentMethodCubit(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        wd = constraints.maxWidth;
        ht = constraints.maxHeight;
        return SafeArea(
          child: MaterialApp(
            theme: ThemeData(
              scaffoldBackgroundColor: const Color((0xffFFFFFF)),
            ),
            debugShowCheckedModeBanner: false,
            navigatorKey: NavigationManager.navigationKey,
            routes: AppRouter.routes,
            initialRoute: CartScreen.id,
          ),
        );
      },
    );
  }
}

// 1- paymentIntentObject create paymentIntent ( amount, currency , customerId)
// details step one : need to api request so i use http or dio package
// Create an Ephemeral Key (stripeVersion , customerId)
// 3. init payment sheet (merchantDisplayName,EphemeralKeySecret,  paymentIntentClientSecret)
// 4. present paymentSheet ()
