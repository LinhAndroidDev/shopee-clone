import 'package:flutter/material.dart';
import 'package:shopee_clone/profile/models/purchase_order_status_model.dart';

class ItemPurchaseOrderStatus extends StatelessWidget {
  const ItemPurchaseOrderStatus({super.key, required this.item});

  final PurchaseOrderStatusModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        item.icon.svg(width: 30, height: 30, colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn)),
        const SizedBox(height: 5),
        Text(
          item.title,
          style: const TextStyle(color: Colors.black, fontSize: 12),
        ),
      ],
    );
  }
}
