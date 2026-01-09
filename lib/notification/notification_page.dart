import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopee_clone/generated/assets.gen.dart';
import 'package:shopee_clone/generated/colors.gen.dart';
import 'package:shopee_clone/notification/item_notification_view.dart';

@RoutePage()
class NotificationPage extends ConsumerStatefulWidget {
  const NotificationPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _NotificationPageState();
  }
}

class _NotificationPageState extends ConsumerState<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: ColorName.backgroundCommon,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 5,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 60),
                SizedBox(
                  height: 40,
                  child: Stack(
                    children: [
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Thông báo',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Assets.images.icCart.svg(
                                  width: 24,
                                  height: 24,
                                  colorFilter: const ColorFilter.mode(ColorName.orange30, BlendMode.srcIn),
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Assets.images.icChat.svg(
                                  width: 24,
                                  height: 24,
                                  colorFilter: const ColorFilter.mode(ColorName.orange30, BlendMode.srcIn),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 5)
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(children: List.generate(5, (index) {
                      return ItemNotificationView(showDivider: index < 4);
                    }),))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              children: [
                Text('Cập nhật đơn hàng', style: TextStyle(color: Colors.grey[600], fontSize: 16)),
                const Spacer(),
                const Text('Đọc tất cả', style: TextStyle(color: ColorName.grey46, fontSize: 14)),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(height: 40),
                Assets.images.icShoppingShopee.image(width: 150, height: 100),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: ColorName.orange30, width: 1),
                  ),
                  child: const Text('Mua sắm ngay', style: TextStyle(color: ColorName.orange30, fontSize: 16),),
                ),
                const SizedBox(height: 30),
              ],
            ),
          )
        ],
      ),
    );
  }
}
