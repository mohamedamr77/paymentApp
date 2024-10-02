import 'package:flutter/material.dart';
import 'package:paymentapp/core/constant/image_app.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';
import 'custom_abb_bar.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        0.017.ph,
        const CustomAppbar(),
        0.02.ph,
        Stack(
          children: [
            Image(image: const AssetImage(AppImage.kBasketCart),
              width: 0.715.w,
              height: 0.5.h,
            ),
            Positioned(
              left: 0.1.w,
                bottom: 0.04.h,
              child: Image(image: const AssetImage(AppImage.kColor),
                width: 0.4.w,
                height: 0.2.h,
              ),
            ),
            Positioned(
              right: 0.1.w,
              top: 0.2.h,
              child: Image(image: const AssetImage(AppImage.KdinoshShapes),
                width: 0.27.w,
                height: 0.2.h,
              ),
            ),
            Positioned(
              left: 0.1.w,
              top: 0.1.h,
              child: Image(image: const AssetImage(AppImage.kBook),
                width: 0.4.w,
                height: 0.18.h,
              ),
            ),


          ],
        ),

      ],
    );
  }
}
