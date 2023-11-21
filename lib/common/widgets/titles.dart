import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taskapp/common/utils/constants.dart';

class BottomTitles extends StatelessWidget {
  const BottomTitles({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppConst.kWidth,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Consumer(
              builder: (context, ref, child) {
                return Container(
                  height: 80,
                  width: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(AppConst.kRadius),
                    ),
                    color: AppConst.kGreen,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
