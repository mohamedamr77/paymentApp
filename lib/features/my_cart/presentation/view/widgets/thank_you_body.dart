import 'package:flutter/material.dart';
import 'package:paymentapp/core/constant/color_app.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';
import 'package:paymentapp/core/utils/shared_widget/custom_abb_bar.dart';

class ThankYouBody extends StatelessWidget {
  const ThankYouBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                size: 0.1.w,
              )),
          Stack (
            clipBehavior: Clip.none,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: 0.02.h, left: 0.07.w, right: 0.07.w, bottom: 0.04.h),
                height: 0.8.h,
                width: 1.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0.05.w),
                  color: const Color(0xffEDEDED),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: -10,
                child: CircleAvatar(
                  radius: 0.09.w,
                  backgroundColor: Color(0xffEDEDED),
                  child: CircleAvatar(
                    backgroundColor: AppColor.greenColor,
                    radius: 0.07.w,
                    child: Icon(Icons.check,size: 0.1.w, color: AppColor.whiteColor,),

                  ),
                ),
              ),
              Positioned(
                  bottom: 0.25.h,
                  left: 0.03.w,
                  child: CircleAvatar(radius: 0.04.w,backgroundColor: AppColor.whiteColor,)),
              Positioned(
                  bottom: 0.25.h,
                  right: 0.03.w,
                  child: CircleAvatar(radius: 0.04.w,backgroundColor: AppColor.whiteColor,)),
            ]
          ),
        ],
      ),
    );
  }
}
