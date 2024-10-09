import 'package:flutter/material.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';

Widget dashedLine() {
  return Row(
      children: List.generate(
    20,
    (index) {
      return Expanded(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 0.008.w),
          height: 0.007.h,
          width: 0.03.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0.02.w),
            color: const Color(0xffB8B8B8),
            border: Border.all(
              width: 2,
              color: const Color(0xffB8B8B8),
            ),
          ),
        ),
      );
    },
  ));
}
