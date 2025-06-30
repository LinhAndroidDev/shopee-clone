import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopee_clone/generated/assets.gen.dart';
import 'package:shopee_clone/generated/colors.gen.dart';
import 'package:shopee_clone/generated/locale_keys.g.dart';
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
                      Expanded(
                        child: Text(
                          tr(LocaleKeys.home_shopee_pay_wallet),
                          style: const TextStyle(fontSize: 12),
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    tr(LocaleKeys.home_googleplay_link_easy_payment),
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
                       Expanded(
                        child: Text(
                          tr(LocaleKeys.home_roll_call),
                          style: const TextStyle(fontSize: 12),
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                   Text(
                    tr(LocaleKeys.home_to_get_coins),
                    style: const TextStyle(fontSize: 10, color: ColorName.orange30, fontWeight: FontWeight.bold),
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
                      Expanded(
                        child: Text(
                          tr(LocaleKeys.home_spay_later),
                          style: const TextStyle(fontSize: 12),
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    tr(LocaleKeys.home_activate_to_receive),
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
