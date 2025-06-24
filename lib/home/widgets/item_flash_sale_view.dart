import 'package:flutter/material.dart';
import 'package:shopee_clone/generated/assets.gen.dart';
import 'package:shopee_clone/generated/colors.gen.dart';

class ItemFlashSaleView extends StatelessWidget {
  const ItemFlashSaleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 12, bottom: 10, left: 5, right: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Flash Sale'.toUpperCase(),
                style: const TextStyle(
                  color: ColorName.orange30,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 5),
              _buildViewTimeOnSale(),
              const SizedBox(width: 3),
              Transform.rotate(
                angle: 3.14159,
                child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.grey.withOpacity(0.5), size: 12),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: buildItemProductOnSale()),
              const SizedBox(width: 5),
              Expanded(child: buildItemProductOnSale()),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildViewTimeOnSale() {
    return Row(
      children: [
        _buildTextTime('02'),
        const Text(':', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
        _buildTextTime('36'),
        const Text(':', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
        _buildTextTime('32'),
      ],
    );
  }

  Widget _buildTextTime(String time) {
    return Container(
      margin: const EdgeInsets.only(left: 1, right: 1),
      padding: const EdgeInsets.symmetric(horizontal: 1),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(1),
      ),
      child: Text(
        time,
        style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildItemProductOnSale() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration:
              BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(5)), border: Border.all(color: const Color(0xFFFF6C8A), width: 2)),
          child: Stack(
            children: [
              Image.network('https://trungtamthuoc.com/images/products/dolfenal-500mg-b0461.jpg', width: double.infinity, height: 80),
              const Positioned(
                  top: 0,
                  right: 0,
                  child: Text(
                    '-46%',
                    style: TextStyle(color: ColorName.textRed, fontSize: 10, backgroundColor: Color(0xFFFFF067)),
                  ))
            ],
          ),
        ),
        const Text('đ158.737', style: TextStyle(color: ColorName.textRed, fontSize: 12, fontWeight: FontWeight.bold)),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: const Color(0xFFFF6C8A).withOpacity(0.4),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text('Đang bán chạy'.toUpperCase(), style: const TextStyle(color: Colors.white, fontSize: 7, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
