import 'package:flutter/material.dart';
import 'package:shopee_clone/generated/colors.gen.dart';

class DividerCommon extends StatelessWidget {
  const DividerCommon({super.key, this.marginLeft, this.marginRight});

  final double? marginLeft;
  final double? marginRight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: marginLeft ?? 0.0,
        right: marginRight ?? 0.0,
      ),
      child: const ColoredBox(
        color: ColorName.grey46,
        child: SizedBox(width: double.infinity, height: 0.5),
      ),
    );
  }
}
