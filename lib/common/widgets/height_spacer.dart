// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:taskapp/common/utils/constants.dart';
import 'package:taskapp/common/widgets/reusable_text.dart';

class HieghtSpacer extends StatelessWidget {
  const HieghtSpacer({super.key, required this.hieght});
  final double hieght;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hieght,
    );
  }
}
