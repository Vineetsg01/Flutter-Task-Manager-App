import 'package:flutter/material.dart';
import 'package:taskapp/common/utils/constants.dart';
import 'package:taskapp/common/widgets/titles.dart';

class XpansionTile extends StatelessWidget {
  const XpansionTile(
      {super.key,
      required this.text,
      required this.text2,
      required this.children,
      this.trailing,
      this.onExpansionChanged});
  final String text;
  final String text2;
  final List<Widget> children;
  final void Function(bool)? onExpansionChanged;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppConst.kBkLight,
        borderRadius: BorderRadius.all(
          Radius.circular(AppConst.kRadius),
        ),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: BottomTitles(text: text, text2: text2),
          tilePadding: EdgeInsets.zero,
          childrenPadding: EdgeInsets.zero,
          onExpansionChanged: onExpansionChanged,
          controlAffinity: ListTileControlAffinity.trailing,
          trailing: trailing,
          children: children,
        ),
      ),
    );
  }
}
