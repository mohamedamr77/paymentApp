import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paymentapp/core/constant/color_app.dart';
import 'package:paymentapp/core/constant/text_app.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';
import 'package:paymentapp/core/utils/shared_widget/custom_text_with_price.dart';
import 'package:paymentapp/core/utils/shared_widget/global_text.dart';

import '../../../../../core/utils/shared_widget/deshed_line.dart';

class ThankYouBody extends StatelessWidget {
  const ThankYouBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          iconBack(),
          Stack(clipBehavior: Clip.none, children: [
            Container(
              margin: EdgeInsets.only(
                  top: 0.02.h, left: 0.07.w, right: 0.07.w, bottom: 0.04.h),
              height: 0.8.h,
              width: 1.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.05.w),
                color: const Color(0xffEDEDED),
              ),
              child: const BodyContainerThankYou(),
            ),
            const CustomCheckCircle(),
            CustomCircleAvatar(
              positionedCircleAvatarLeft: 0.03.w,
            ),
            CustomCircleAvatar(
              positionedCircleAvatarRight: 0.03.w,
            ),
          ]),
        ],
      ),
    );
  }
}

Widget iconBack() {
  return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.arrow_back,
        size: 0.1.w,
      ));
}

class BodyContainerThankYou extends StatelessWidget {
  const BodyContainerThankYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        0.07.ph,
        GText(
          content: AppText.kThankYou,
          fontSize: 0.07.w,
          fontWeight: FontWeight.w700,
        ),
        0.01.ph,
        GText(
          content: AppText.kYourTransactionWasSuccessful,
          fontSize: 0.05.w,
          textAlign: TextAlign.center,
          fontWeight: FontWeight.w400,
        ),
        0.04.ph,
        const CustomTextWithPrice(text: AppText.kDate, price: "01/24/2023"),
        0.01.ph,
        const CustomTextWithPrice(text: AppText.kTime, price: "10:15 AM"),
        0.01.ph,
        const CustomTextWithPrice(text: AppText.kTo, price: "Sam Louis"),
        0.02.ph,
        Divider(
          indent: 0.04.w,
          endIndent: 0.04.w,
        ),
        0.02.ph,
        CustomTextWithPrice(
          text: AppText.kTotal,
          price: "\$50.97",
          fontWeightPrice: FontWeight.bold,
          fontWeightText: FontWeight.bold,
          fontSizeText: 0.05.w,
          fontSizePrice: 0.05.w,
        ),
        0.018.ph,
        Container(
          width: 0.7.w,
          height: 0.08.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0.05.w),
            color: AppColor.whiteColor,
          ),
          child: Row(
            children: [
              0.04.pw,
              SvgPicture.asset("assets/images/logo.svg"),
              0.04.pw,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  0.014.ph,
                  GText(
                    content: "Credit Card ",
                    fontSize: 0.04.w,
                    fontWeight: FontWeight.w700,
                  ),
                  GText(
                    content: "Mastercard **78",
                    fontSize: 0.03.w,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey,
                  )
                ],
              )
            ],
          ),
        ),
        0.028.ph,
        dashedLine(),
        0.045.ph,
        Row(
          children: [
            0.045.pw,
            SvgPicture.asset(
              "assets/images/SVGRepo_iconCarrier.svg",
            ),
            const Spacer(),
            Container(
              margin: EdgeInsets.only(right: 0.04.w),
              padding:
                  EdgeInsets.symmetric(vertical: 0.015.h, horizontal: 0.06.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0.02.w),
                  border: Border.all(
                    color: Colors.green,
                  )),
              child: GText(
                content: "PAID",
                fontSize: 0.04.w,
                color: Colors.green,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        )
      ],
    );
  }
}

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar(
      {super.key,
      this.positionedCircleAvatarLeft,
      this.positionedCircleAvatarRight});
  final double? positionedCircleAvatarLeft;
  final double? positionedCircleAvatarRight;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0.25.h,
        left: positionedCircleAvatarLeft,
        right: positionedCircleAvatarRight,
        child: CircleAvatar(
          radius: 0.04.w,
          backgroundColor: AppColor.whiteColor,
        ));
  }
}

class CustomCheckCircle extends StatelessWidget {
  const CustomCheckCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: -10,
      child: CircleAvatar(
        radius: 0.09.w,
        backgroundColor: const Color(0xffEDEDED),
        child: CircleAvatar(
          backgroundColor: AppColor.greenColor,
          radius: 0.07.w,
          child: Icon(
            Icons.check,
            size: 0.1.w,
            color: AppColor.whiteColor,
          ),
        ),
      ),
    );
  }
}
