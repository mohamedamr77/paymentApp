
import 'package:flutter/material.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';

import 'global_text.dart';

class CustomTextWithPrice extends StatelessWidget{
  const CustomTextWithPrice({super.key, required this.text, required this.price, this.fontWeightText = FontWeight.w400,  this.fontWeightPrice =FontWeight.w700,  this.fontSizeText,  this.fontSizePrice ,});

  final String text;
  final String price;
  final FontWeight fontWeightText;
  final FontWeight fontWeightPrice;

  final double? fontSizeText;
  final double? fontSizePrice;

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  EdgeInsets.symmetric(vertical: 0.005.h,horizontal: 0.05.w),
      child: Row(
        children: [
          Expanded(child: GText(content: text, fontSize: fontSizeText ??0.04.w,fontWeight: fontWeightText,)),
          GText(content: price, fontSize: fontSizePrice  ??0.04.w,fontWeight:fontWeightPrice,)
        ],
      ),
    );
  }

}