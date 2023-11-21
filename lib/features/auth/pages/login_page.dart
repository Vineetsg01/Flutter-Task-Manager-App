import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taskapp/common/utils/constants.dart';
import 'package:taskapp/common/widgets/appstyle.dart';
import 'package:taskapp/common/widgets/custom_otn_btn.dart';
import 'package:taskapp/common/widgets/custom_text.dart';
import 'package:taskapp/common/widgets/height_spacer.dart';
import 'package:taskapp/common/widgets/reusable_text.dart';
import 'package:taskapp/features/auth/pages/otp_page.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final TextEditingController phone = TextEditingController();
  Country country = Country(
      phoneCode: "1",
      countryCode: "US",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "USA",
      example: "USA",
      displayName: "United States",
      displayNameNoCountryCode: "US",
      e164Key: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.kBkDark,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Image.asset("assets/images/todo.png"),
              ),
              const HieghtSpacer(hieght: 20),
              Container(
                alignment: Alignment.center,
                child: ReusableText(
                  text: "Please enter your phone number",
                  style: appStyle(17, AppConst.kLight, FontWeight.w500),
                ),
              ),
              const HieghtSpacer(hieght: 20),
              Center(
                child: CustomText(
                  controller: phone,
                  prefixIcon: Container(
                    padding: const EdgeInsets.all(4),
                    child: GestureDetector(
                      onTap: () {
                        showCountryPicker(
                            context: context,
                            countryListTheme: CountryListThemeData(
                              backgroundColor: AppConst.kLight,
                              bottomSheetHeight: AppConst.kHeight * 0.6,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(AppConst.kRadius),
                                  topRight: Radius.circular(AppConst.kRadius)),
                            ),
                            onSelect: (code) {
                              setState(() {});
                            });
                      },
                      child: ReusableText(
                        text: "${country.flagEmoji}+${country.phoneCode}",
                        style: appStyle(18, AppConst.kBkDark, FontWeight.bold),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                  hintText: "Enter your phone number",
                  hintStyle: appStyle(16, AppConst.kBkDark, FontWeight.w600),
                ),
              ),
              const HieghtSpacer(hieght: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomOtlnBtn(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OtpPage()));
                    },
                    height: AppConst.kHeight * 0.07,
                    width: AppConst.kWidth * 0.9,
                    color: AppConst.kLight,
                    text: "Send Code"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
