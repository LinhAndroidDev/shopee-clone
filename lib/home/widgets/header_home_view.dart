import 'package:flutter/material.dart';
import 'package:shopee_clone/generated/assets.gen.dart';
import 'package:shopee_clone/generated/colors.gen.dart';

class HeaderHomeView extends StatelessWidget {
  const HeaderHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Assets.images.icSearch.svg(width: 22, height: 22),
                  const SizedBox(width: 5),
                  const Expanded(child: Text('Máy Cạo Râu', style: TextStyle(color: ColorName.textRed, fontSize: 16))),
                  Assets.images.icCamera.svg(width: 24, height: 24)
                ],
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: Assets.images.icCart.svg(width: 24, height: 24)),
          IconButton(onPressed: () {}, icon: Assets.images.icChat.svg(width: 24, height: 24)),
        ],
      ),
    );
  }
}
