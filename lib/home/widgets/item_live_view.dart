import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopee_clone/generated/colors.gen.dart';
import 'package:shopee_clone/generated/locale_keys.g.dart';

class ItemLiveView extends StatelessWidget {
  const ItemLiveView({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                tr(LocaleKeys.home_shopee_live_super_cheap).toUpperCase(),
                style: const TextStyle(
                  color: ColorName.orange30,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 3),
              Transform.rotate(
                angle: 3.14159,
                child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.grey.withOpacity(0.5), size: 12),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7BFTvqqnM_J9CrAkGlQTkg0yuzCmkDZO-EA&s',
                          width: double.infinity, height: 110, fit: BoxFit.cover),
                    ),
                    _buildViewLive(),
                    Positioned(
                        bottom: 0,
                        left: 5,
                        child: Text(
                          tr(LocaleKeys.home_super_sale),
                          style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),
                          softWrap: true,
                        ))
                  ],
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                          'https://file.hstatic.net/200000472237/file/livestream-hut-khach-chot-don-ao-ao-2_1ac0fc40af674e74af8cd6b3bb71245f_grande.png',
                          width: double.infinity,
                          height: 110,
                          fit: BoxFit.cover),
                    ),
                    _buildViewLive(),
                    const Positioned(
                        bottom: 0,
                        left: 5,
                        child: Text(
                          '[CS]_ o2808_HỏiĐáp',
                          style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),
                          softWrap: true,
                        ))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildViewLive() {
    return Container(
      margin: const EdgeInsets.only(top: 3, left: 3),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
      decoration: BoxDecoration(
        color: ColorName.orange30,
        borderRadius: BorderRadius.circular(2),
        gradient: const LinearGradient(
          colors: [ColorName.orange30, Color(0xFFF6773E)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.circle, color: Colors.white, size: 8),
          const SizedBox(width: 2),
          Text(
            tr(LocaleKeys.home_live),
            style: const TextStyle(color: Colors.white, fontSize: 9, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
