import 'package:flutter/material.dart';
import 'package:shopee_clone/generated/assets.gen.dart';

class ItemVoucher extends StatelessWidget {
  const ItemVoucher({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final SvgGenImage icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.withOpacity(0.5), width: 0.5),
            ),
            child: Assets.images.icFood.svg(width: 28, height: 28)),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
          softWrap: true,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
