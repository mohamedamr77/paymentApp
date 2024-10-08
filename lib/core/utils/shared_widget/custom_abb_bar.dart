import 'package:flutter/material.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';

import '../../constant/color_app.dart';
import '../../constant/text_app.dart';
import 'global_text.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.text});
    final String text;
  @override
  Widget build(BuildContext context) {
    return     Row(
      children: [
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.arrow_back,color: AppColor.blackColor,size: 0.1.w,)

        ),
        Expanded(
          child: GText(
              textAlign: TextAlign.center,
              content: text,
              fontSize: 0.07.w,
          ),
        ),
        0.1.pw,
      ],
    );
  }
}
