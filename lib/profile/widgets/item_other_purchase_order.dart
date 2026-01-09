import 'package:flutter/material.dart';
import 'package:shopee_clone/generated/assets.gen.dart';
import 'package:shopee_clone/generated/colors.gen.dart';

class ItemOtherPurchaseOrder extends StatelessWidget {
  const ItemOtherPurchaseOrder({super.key, required this.icon, required this.title});

  final SvgGenImage icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          icon.svg(width: 30, height: 30),
          const SizedBox(width: 10),
          Text(title, style: const TextStyle(color: Colors.black, fontSize: 16)),
          const Spacer(),
          Transform.rotate(
            angle: 3.14159,
            child: const Icon(Icons.arrow_back_ios_new_outlined, color: ColorName.grey46, size: 14),
          ),
        ],
      ),
    );
  }
}
