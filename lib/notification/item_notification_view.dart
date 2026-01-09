import 'package:flutter/material.dart';
import 'package:shopee_clone/common/widgets/divider_common.dart';
import 'package:shopee_clone/generated/colors.gen.dart';

class ItemNotificationView extends StatelessWidget {
  const ItemNotificationView({super.key, required this.showDivider});

  final bool showDivider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Khuyến mãi',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Text('Đa dạng mệnh giá, dễ dàng lựa chọn', style: TextStyle(color: Colors.grey[600], fontSize: 14)),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  color: ColorName.orange30,
                  shape: BoxShape.circle,
                ),
                child: const Text('19', style: TextStyle(fontSize: 12, color: Colors.white)),
              ),
              const SizedBox(width: 10),
              Transform.rotate(
                angle: 3.14159,
                child: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.grey, size: 15),
              ),
            ],
          ),
        ),
        showDivider
            ? const DividerCommon(marginLeft: 15)
            : const SizedBox.shrink(),
      ],
    );
  }
}
