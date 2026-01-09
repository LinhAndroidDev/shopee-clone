import 'package:flutter/material.dart';
import 'package:shopee_clone/generated/assets.gen.dart';
import 'package:shopee_clone/generated/colors.gen.dart';

class HeaderProfileView extends StatelessWidget {
  const HeaderProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0XFFF04D30),
            Color(0XFFF97044),
          ],
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 60),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Assets.images.icBox.svg(width: 24, height: 24, colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn)),
                    const SizedBox(width: 10),
                    const Text('Bắt đầu bán', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500)),
                    const SizedBox(width: 5),
                    Transform.rotate(
                      angle: 3.14159,
                      child: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black, size: 16),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
              const Spacer(),
              IconButton(onPressed: () {}, icon: Assets.images.icSetting.svg(width: 24, height: 24)),
              IconButton(onPressed: () {}, icon: Assets.images.icCart.svg(width: 24, height: 24)),
              IconButton(onPressed: () {}, icon: Assets.images.icChat.svg(width: 24, height: 24)),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              const SizedBox(width: 20),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                    child: Assets.images.icPersonalFill.svg(width: 40, height: 40, colorFilter: const ColorFilter.mode(ColorName.orange30, BlendMode.srcIn)),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                      child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.edit, color: Colors.white, size: 14),
                  ))
                ],
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text('Nguyen Linh 07', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            const Text('Thành viên', style: TextStyle(color: ColorName.orange30, fontSize: 12, fontWeight: FontWeight.w500)),
                            const SizedBox(width: 2),
                            Transform.rotate(
                              angle: 3.14159,
                              child: const Icon(Icons.arrow_back_ios_new_outlined, color: ColorName.orange30, size: 12),
                            ),
                            const SizedBox(width: 3),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    children: [
                      Text('0 người theo dõi', style: TextStyle(color: Colors.white, fontSize: 12)),
                      SizedBox(width: 15),
                      Text('3 Đang theo dõi', style: TextStyle(color: Colors.white, fontSize: 12)),
                    ],
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
