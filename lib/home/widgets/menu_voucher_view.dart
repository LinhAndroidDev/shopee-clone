import 'package:flutter/material.dart';
import 'package:shopee_clone/home/models/voucher_model.dart';
import 'package:shopee_clone/home/widgets/item_voucher.dart';

class MenuVoucherView extends StatelessWidget {
  const MenuVoucherView({super.key, required this.vouchers});

  final List<VoucherModel> vouchers;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: vouchers.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.only(left: (index == 0) ? 15 : 0, right: 15),
              width: 80,
              child: ItemVoucher(title: vouchers[index].title, icon: vouchers[index].icon));
        });
  }
}
