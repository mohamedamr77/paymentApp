import 'package:paymentapp/features/my_cart/data/model/payment_method_model.dart';

import '../../../../core/constant/image_app.dart';

List<PaymentMethodModel> paymentMethodList =[
  PaymentMethodModel(image: AppImage.kCardIcon, isActive: true),
  PaymentMethodModel(image: AppImage.kPaypal, isActive: false),
  // PaymentMethodModel(image: AppImage.kPayApple, isActive: false),
];