import 'package:flutter/material.dart';
import 'package:shopee_clone/generated/assets.gen.dart';
import 'package:shopee_clone/generated/colors.gen.dart';
import 'package:shopee_clone/home/models/product_model.dart';
import 'package:shopee_clone/home/widgets/divider_vertical_view.dart';
import 'package:shopee_clone/utils/util.dart';

class ItemProductView extends StatelessWidget {
  const ItemProductView({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final widthProduct = (MediaQuery.of(context).size.width - 15) / 2;
    return Container(
      margin: const EdgeInsets.only(right: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image.network(
              product.imageUrl,
              width: widthProduct,
              height: widthProduct,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              product.detail,
              style: const TextStyle(fontSize: 12, color: Colors.black),
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [const SizedBox(width: 10), _buildViewBestSeller(), const SizedBox(width: 3), _buildViewRate(product.rating)],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const SizedBox(width: 10),
              Text(formatCurrency(product.price), style: const TextStyle(color: ColorName.textRed, fontWeight: FontWeight.w500)),
              const Spacer(),
              Text(
                'Đã bán ${product.quantitySold}',
                style: const TextStyle(color: Colors.black, fontSize: 10),
              ),
              const SizedBox(width: 10),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              product.shippingTime?.isNotEmpty == true
                  ? Row(
                      children: [
                        const SizedBox(width: 10),
                        Assets.images.icExpress.svg(width: 15, height: 15),
                        const SizedBox(width: 2),
                        Text(product.shippingTime ?? '', style: const TextStyle(color: ColorName.green68, fontSize: 10)),
                      ],
                    )
                  : const SizedBox.shrink(),
              product.address?.isNotEmpty == true
                  ? Row(
                      children: [
                        const SizedBox(width: 4),
                        const DividerVerticalView(height: 10),
                        const SizedBox(width: 2),
                        Assets.images.icLocation.svg(width: 13, height: 13, colorFilter: ColorFilter.mode(Colors.grey[600]!, BlendMode.srcIn)),
                        Text(product.address ?? '', style: TextStyle(color: Colors.grey[600], fontSize: 10)),
                      ],
                    )
                  : const SizedBox.shrink(),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildTypeRate(String title) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 1),
        decoration: BoxDecoration(
          border: Border.all(color: ColorName.textRed, width: 0.5),
        ),
        child: Text(
          title,
          style: const TextStyle(color: ColorName.textRed, fontSize: 10),
        ));
  }

  Widget _buildViewRate(double? rate) {
    return rate == null
        ? const SizedBox.shrink()
        : Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFFF9F6),
              border: Border.all(color: Colors.amber, width: 0.5),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 2),
                const Icon(Icons.star, color: Colors.amber, size: 14),
                const SizedBox(width: 2),
                Text(
                  rate.toString(),
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                ),
                const SizedBox(width: 4),
              ],
            ),
          );
  }

  Widget _buildViewBestSeller() {
    return Row(
      children: [
        Container(
            color: ColorName.orange30,
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 1),
            child: Assets.images.icReward.svg(width: 15, height: 15)),
        _buildTypeRate('Bán chạy nhất'),
      ],
    );
  }
}
