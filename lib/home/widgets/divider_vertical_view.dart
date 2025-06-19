import 'package:flutter/material.dart';

import '../../generated/colors.gen.dart';

class DividerVerticalView extends StatelessWidget {
  const DividerVerticalView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: ColorName.grey46,
      child: SizedBox(width: 0.5, height: 35),
    );
  }
}
