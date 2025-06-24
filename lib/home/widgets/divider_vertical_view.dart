import 'package:flutter/material.dart';

import '../../generated/colors.gen.dart';

class DividerVerticalView extends StatelessWidget {
  const DividerVerticalView({super.key, this.height});

  final double? height;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: ColorName.grey46,
      child: SizedBox(width: 0.5, height: height ?? 35),
    );
  }
}
