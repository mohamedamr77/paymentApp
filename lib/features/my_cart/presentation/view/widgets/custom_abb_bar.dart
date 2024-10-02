import 'package:flutter/material.dart';
import 'package:paymentapp/core/extentions/screen_size.dart';

import '../../../../../core/constant/color_app.dart';
import '../../../../../core/constant/text_app.dart';
import '../../../../../core/utils/shared_widget/global_text.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

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
              content: AppText.kMyCart, fontSize: 0.07.w),
        ),
        0.1.pw,
      ],
    );
  }
}
