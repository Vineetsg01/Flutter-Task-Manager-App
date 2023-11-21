import 'package:flutter/widgets.dart';

class ReusableText extends StatelessWidget {
  const ReusableText({super.key, required this.text, required this.style});
  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 3,
      textAlign: TextAlign.left,
      softWrap: false,
      overflow: TextOverflow.fade,
      style: style,
    );
  }
}
