// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskapp/common/utils/constants.dart';
import 'package:taskapp/common/widgets/custom_otn_btn.dart';

import '../../../common/widgets/appstyle.dart';
import '../../../common/widgets/height_spacer.dart';
import '../../../common/widgets/reusable_text.dart';
import '../../auth/pages/login_page.dart';

class Pagetwo extends StatelessWidget {
  const Pagetwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConst.kHeight,
      width: AppConst.kWidth, //1:49
      color: AppConst.kBkDark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Image.asset("assets/images/todo.png"),
          ),
          const HieghtSpacer(hieght: 150),
          CustomOtlnBtn(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              height: AppConst.kHeight * 0.06,
              width: AppConst.kWidth * 0.9,
              // color2: AppConst.kLight,
              color: AppConst.kLight,
              text: "Login using a phone number")
        ],
      ),
    );
  }
}
