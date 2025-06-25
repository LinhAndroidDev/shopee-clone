import 'package:flutter/material.dart';
import 'package:shopee_clone/generated/colors.gen.dart';

class ItemNotificationView extends StatelessWidget {
  const ItemNotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 15),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.withOpacity(0.5), width: 0.5),
          ),
          child: const Icon(Icons.discount_outlined, color: ColorName.orange30, size: 20),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            children: [
              const Text('Khuyến mãi', style: TextStyle(color: Colors.black, fontSize: 14),),
              Text('Đa dạng mệnh giá, dễ dàng lựa chọn', style: TextStyle(color: Colors.grey[600], fontSize: 12)),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Container(
          child: Text('19', style: TextStyle(),),
        )
      ],
    );
  }
}
