import 'package:flutter/material.dart';
import 'package:shopee_clone/generated/assets.gen.dart';
import 'package:shopee_clone/generated/colors.gen.dart';
import 'package:shopee_clone/home/widgets/divider_vertical_view.dart';

class PayHomeView extends StatelessWidget {
  const PayHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Assets.images.icScan.svg(width: 23, height: 23),
          const SizedBox(width: 10),
          const DividerVerticalView(),
          const SizedBox(width: 10),
          Flexible(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    children: [
                      Assets.images.icWallet.svg(width: 18, height: 18),
                      const SizedBox(width: 5),
                      const Expanded(
                        child: Text(
                          'Ví Shopee Pay',
                          style: TextStyle(fontSize: 12),
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Liên kết GooglePlay dễ dàng thanh toán',
                    style: TextStyle(fontSize: 10, color: Colors.grey[600]),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )),
          const SizedBox(width: 10),
          const DividerVerticalView(),
          const SizedBox(width: 10),
          Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Assets.images.icCoinGold.svg(width: 18, height: 18),
                      const SizedBox(width: 5),
                      const Expanded(
                        child: Text(
                          'Điểm danh',
                          style: TextStyle(fontSize: 12),
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                  const Text(
                    'Để nhận Xu!',
                    style: TextStyle(fontSize: 10, color: ColorName.orange30, fontWeight: FontWeight.bold),
                    softWrap: true,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )),
          const SizedBox(width: 10),
          const DividerVerticalView(),
          const SizedBox(width: 10),
          Flexible(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    children: [
                      Assets.images.icCreditCard.svg(width: 18, height: 18),
                      const SizedBox(width: 5),
                      const Expanded(
                        child: Text(
                          'SpayLater',
                          style: TextStyle(fontSize: 12),
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Kích hoạt để nhận 150.000vnđ',
                    style: TextStyle(fontSize: 10, color: Colors.grey[600]),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )),
          const SizedBox(width: 10),
          const DividerVerticalView(),
          const SizedBox(width: 10),
          Assets.images.icCoin.svg(width: 23, height: 23),
        ],
      ),
    );
  }
}
