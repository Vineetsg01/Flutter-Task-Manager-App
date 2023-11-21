import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:taskapp/common/utils/constants.dart';
import 'package:taskapp/common/widgets/appstyle.dart';
import 'package:taskapp/common/widgets/height_spacer.dart';
import 'package:taskapp/common/widgets/reusable_text.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HieghtSpacer(hieght: AppConst.kHeight * 0.15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Image.asset(
                  "assets/images/todo.png",
                  width: AppConst.kWidth * 0.5,
                ),
              ),
              HieghtSpacer(hieght: 26),
              ReusableText(
                text: "Enter OTP",
                style: appStyle(18, AppConst.kLight, FontWeight.bold),
              ),
              const HieghtSpacer(hieght: 26),
              // const Pinput(
              //   length: 6,
              //   showCursor: true,
              //   onCompleted: (value) {
              //     if (value.length == 6) {}
              //   },
              //   onSubmitted: (value) {
              //     if (value.length == 6) {}
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
