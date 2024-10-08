import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:paymentapp/core/constant/color_app.dart';
import 'package:paymentapp/core/constant/image_app.dart';
import 'package:paymentapp/core/constant/text_app.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';
import 'package:paymentapp/core/utils/shared_widget/global_text.dart';
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
              width: 0.8.w,
              height: 0.5.h,
            ),
            Positioned(
              left: 0.122.w,
                bottom: 0.04.h,
              child: Image(image: const AssetImage(AppImage.kColor),
                width: 0.4.w,
                height: 0.2.h,
              ),
            ),
            Positioned(
              right: 0.13.w,
              top: 0.2.h,
              child: Image(image: const AssetImage(AppImage.KdinoshShapes),
                width: 0.27.w,
                height: 0.2.h,
              ),
            ),
            Positioned(
              left: 0.13.w,
              top: 0.1.h,
              child: Image(image: const AssetImage(AppImage.kBook),
                width: 0.4.w,
                height: 0.18.h,
              ),
            ),
            Positioned(
              right: 0.01.w,
              top: 0.02.h,
              child: Stack(
                children: [
                  Image(image: const AssetImage(AppImage.kContainerPointerToItem),
                    width: 0.52.w,
                    height: 0.19.h,
                  ),
                  Positioned(
                    top: 0.013.h,
                    left: 0.03.w,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 0.01.w),
                      child: SizedBox(
                        width: 0.45.w,
                        height: 0.174.h,
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GText(content: AppText.kKineticSandDinoDigPlayset, fontSize: 0.05.w),
                            0.004.ph,
                            Container(
                              height: 0.05.h,
                              width: 0.3.w, // Increased the width slightly
                              decoration: BoxDecoration(
                                color: AppColor.whiteColor,
                                borderRadius: BorderRadius.circular(0.01.w),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  0.01.pw,
                                  const Icon(Icons.remove_rounded),
                                  const VerticalDivider(),
                                  Expanded(
                                    child: AutoSizeText(
                                      '4',
                                      style: TextStyle(
                                        fontSize: 0.06.w,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                       minFontSize: 10,
                                       // Allow the text to shrink if needed
                                      overflow: TextOverflow.ellipsis, // Add this to handle overflow
                                    ),
                                  ),
                                  const VerticalDivider(),
                                  const Icon(Icons.add),
                                  0.01.pw,
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),

      ],
    );
  }
}
