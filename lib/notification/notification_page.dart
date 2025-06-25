import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopee_clone/generated/assets.gen.dart';
import 'package:shopee_clone/generated/colors.gen.dart';

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
      color: Colors.grey.shade200,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 5,
                  offset: const Offset(0, 2),
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
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
