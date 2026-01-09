import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopee_clone/common/widgets/divider_common.dart';
import 'package:shopee_clone/generated/assets.gen.dart';
import 'package:shopee_clone/generated/colors.gen.dart';
import 'package:shopee_clone/profile/models/purchase_order_status_model.dart';
import 'package:shopee_clone/profile/widgets/header_profile_view.dart';
import 'package:shopee_clone/profile/widgets/item_other_purchase_order.dart';
import 'package:shopee_clone/profile/widgets/item_purchase_order_status.dart';
import 'package:shopee_clone/profile/widgets/set_up_password_view.dart';

@RoutePage()
class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  final purchaseOrderStatus = [
    PurchaseOrderStatusModel(icon: Assets.images.icWaitConfirmation, title: 'Chờ xác nhận'),
    PurchaseOrderStatusModel(icon: Assets.images.icWaitGoods, title: 'Chờ lấy hàng'),
    PurchaseOrderStatusModel(icon: Assets.images.icWaitDelivery, title: 'Chờ giao hàng'),
    PurchaseOrderStatusModel(icon: Assets.images.icRating, title: 'Đánh giá'),
  ];

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        children: [
          const HeaderProfileView(),
          const SetUpPasswordView(),
          ColoredBox(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 15),
                    const Text('Đơn mua', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
                    const Spacer(),
                    const Text('Xem lịch sử mua hàng', style: TextStyle(color: Colors.black, fontSize: 14)),
                    const SizedBox(width: 5),
                    Transform.rotate(
                      angle: 3.14159,
                      child: const Icon(Icons.arrow_back_ios_new_outlined, color: ColorName.grey46, size: 14),
                    ),
                    const SizedBox(width: 15),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: List.generate(purchaseOrderStatus.length, (index) {
                    return Expanded(child: ItemPurchaseOrderStatus(item: purchaseOrderStatus[index]));
                  }),
                ),
                const SizedBox(height: 15),
                const DividerCommon(marginLeft: 15, marginRight: 15),
                ItemOtherPurchaseOrder(icon: Assets.images.icRechargeCardService, title: 'Đơn Vị Nạp Thẻ và Dịch Vụ'),
                const DividerCommon(marginLeft: 15, marginRight: 15),
                ItemOtherPurchaseOrder(icon: Assets.images.icFood, title: 'Đơn ShopeeFood'),
                const Divider(thickness: 10, color: ColorName.backgroundCommon)
              ],
            ),
          )
        ],
      ),
    );
  }
}
