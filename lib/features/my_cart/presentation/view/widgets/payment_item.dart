import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';

import '../../../../../core/constant/color_app.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({
    super.key,
    required this.isActive,
    required this.image,
  });
  final bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      child: Container(
        height: 0.1.h,
        width: 0.25.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0.03.w),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: isActive == false
                    ? Colors.transparent
                    : AppColor.greenColor,
                blurRadius: 4)
          ],
          border: Border.all(
            color: isActive == false
                ? const Color(0xff808080)
                : AppColor.greenColor,
          ),
        ),
        child: image.contains(
          "svg",
        )
            ? SvgPicture.asset(
                image,
                fit: BoxFit.scaleDown,
              )
            : Image.asset(image),
      ),
    );
  }
}
