import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shopee_clone/generated/assets.gen.dart';
import 'package:shopee_clone/generated/colors.gen.dart';

class HeaderHomeView extends StatelessWidget {
  const HeaderHomeView({super.key, this.isHomePage = true});

  final bool isHomePage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Assets.images.icSearch.svg(width: 22, height: 22),
                  const SizedBox(width: 5),
                  isHomePage
                      ? Expanded(
                          child: AnimatedTextKit(animatedTexts: [
                          RotateAnimatedText('Chào mừng bạn',
                              textStyle: const TextStyle(color: ColorName.textRed, fontSize: 14),
                              transitionHeight: 25,
                              alignment: Alignment.centerLeft,
                              duration: const Duration(milliseconds: 2000)),
                          RotateAnimatedText('Máy Cạo Râu',
                              textStyle: const TextStyle(color: ColorName.textRed, fontSize: 14),
                              transitionHeight: 25,
                              alignment: Alignment.centerLeft,
                              duration: const Duration(milliseconds: 2000)),
                          RotateAnimatedText('Đùi Gà Rán',
                              textStyle: const TextStyle(color: ColorName.textRed, fontSize: 14),
                              transitionHeight: 25,
                              alignment: Alignment.centerLeft,
                              duration: const Duration(milliseconds: 2000)),
                        ], repeatForever: true))
                      : const Expanded(
                          child: Text(
                            'Shopee Mall',
                            style: TextStyle(color: ColorName.red1C, fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                  Assets.images.icCamera.svg(width: 24, height: 24),
                ],
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: Assets.images.icCart.svg(width: 24, height: 24)),
          IconButton(onPressed: () {}, icon: (isHomePage ? Assets.images.icChat : Assets.images.icMenuCircle).svg(width: 24, height: 24)),
        ],
      ),
    );
  }
}
