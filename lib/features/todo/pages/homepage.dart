// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taskapp/common/utils/constants.dart';
import 'package:taskapp/common/widgets/appstyle.dart';
import 'package:taskapp/common/widgets/custom_text.dart';
import 'package:taskapp/common/widgets/expansion_tile.dart';
import 'package:taskapp/common/widgets/height_spacer.dart';
import 'package:taskapp/common/widgets/reusable_text.dart';

import '../../../common/widgets/width_spacer.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});
  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with TickerProviderStateMixin {
  final TextEditingController search = TextEditingController();
  late final TabController tabController =
      TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.kBkDark,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(85),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      text: "Dashboard",
                      style: appStyle(18, AppConst.kLight, FontWeight.bold),
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: AppConst.kLight,
                        borderRadius: BorderRadius.all(
                          Radius.circular(9),
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.add,
                          color: AppConst.kBkDark,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              HieghtSpacer(hieght: 20),
              CustomText(
                hintText: "Search",
                controller: search,
                prefixIcon: Container(
                  padding: EdgeInsets.all(14.h),
                  child: GestureDetector(
                    onTap: null,
                    child: Icon(
                      AntDesign.search1,
                      color: AppConst.kGreyLight,
                    ),
                  ),
                ),
                suffixIcon: Icon(
                  FontAwesome.sliders,
                  color: AppConst.kGreyLight,
                ),
              ),
              HieghtSpacer(hieght: 15),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView(
            children: [
              HieghtSpacer(hieght: 25),
              Row(
                children: [
                  Icon(
                    FontAwesome.tasks,
                    size: 20,
                    color: AppConst.kLight,
                  ),
                  WidthSpacer(wydth: 10),
                  ReusableText(
                    text: "Today's tasks",
                    style: appStyle(18, AppConst.kLight, FontWeight.bold),
                  ),
                ],
              ),
              const HieghtSpacer(hieght: 25),
              Container(
                decoration: BoxDecoration(
                  color: AppConst.kLight,
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppConst.kRadius),
                  ),
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    color: AppConst.kGreyLight,
                    borderRadius: BorderRadius.all(
                      Radius.circular(AppConst.kRadius),
                    ),
                  ),
                  controller: tabController,
                  labelPadding: EdgeInsets.zero,
                  isScrollable: false,
                  labelColor: AppConst.kBlueLight,
                  labelStyle:
                      appStyle(24, AppConst.kBlueLight, FontWeight.w700),
                  unselectedLabelColor: AppConst.kLight,
                  tabs: [
                    Tab(
                      child: SizedBox(
                        width: AppConst.kWidth * 0.5,
                        child: Center(
                          child: ReusableText(
                            text: "Pending",
                            style:
                                appStyle(16, AppConst.kBkDark, FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: EdgeInsets.only(left: 30.w),
                        width: AppConst.kWidth * 0.5,
                        child: Center(
                          child: ReusableText(
                            text: "Completed",
                            style:
                                appStyle(16, AppConst.kBkDark, FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              HieghtSpacer(hieght: 20),
              SizedBox(
                height: AppConst.kHeight * 0.3,
                width: AppConst.kWidth,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppConst.kRadius),
                  ),
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Container(
                        color: AppConst.kGreen,
                        height: AppConst.kHeight * 0.3,
                      ),
                      Container(
                        color: AppConst.kBkLight,
                        height: AppConst.kHeight * 0.3,
                      ),
                    ],
                  ),
                ),
              ),
              const HieghtSpacer(hieght: 20),
              const XpansionTile(
                text: "Tommorrow's Task",
                text2: "Tommorrow's Tasks are shown here",
                children: [],
              ),
              const HieghtSpacer(hieght: 20),
              XpansionTile(
                text: DateTime.now()
                    .add(const Duration(days: 2))
                    .toString()
                    .substring(5, 10),
                text2: "Tommorrow's Tasks are shown here",
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
