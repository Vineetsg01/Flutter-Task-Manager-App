import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskapp/common/utils/constants.dart';
import 'package:taskapp/common/widgets/appstyle.dart';
import 'package:taskapp/common/widgets/height_spacer.dart';
import 'package:taskapp/common/widgets/reusable_text.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConst.kHeight,
      width: AppConst.kWidth,
      color: AppConst.kBkDark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Image.asset("assets/images/todo.png"),
          ),
          const HieghtSpacer(hieght: 100),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ReusableText(
                text: "ToDO with RiverPod",
                style: appStyle(30, AppConst.kLight, FontWeight.w600),
              ),
              const HieghtSpacer(hieght: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Text(
                  "Welcome!! Do you want to create a task quickly and easily",
                  textAlign: TextAlign.center,
                  style: appStyle(16, AppConst.kLight, FontWeight.normal),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
