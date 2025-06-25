import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopee_clone/generated/colors.gen.dart';
import 'package:shopee_clone/home/widgets/header_home_view.dart';

@RoutePage()
class MallPage extends ConsumerStatefulWidget {
  const MallPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _MallPageState();
  }
}

final indexAdsProvider = StateProvider<int>((ref) {
  return 0;
});

class _MallPageState extends ConsumerState<MallPage> {
  final ads = [
    'https://cf.shopee.sg/file/sg-11134141-7rcek-lrcxi7xw2iyw99',
    'https://penji.co/wp-content/uploads/2019/03/Mcdonalds-Food-Ad-Designs.jpg.webp',
    'https://tamanhhospital.vn/wp-content/uploads/2024/07/tre-bi-soi-uong-thuoc-gi.jpg',
    'https://cdn-www.vinid.net/2020/09/8cb97047-tr%C3%A0-s%E1%BB%AFa-pozaa-tea-%C6%B0u-%C4%91%C3%A3i.jpg',
    'https://www.bigc.vn/files/cam-nang-mua-sam-27-11-2023-14-35-21/danh-gia-san-pham-27-11-2023-14-38-54/sua-bot-viet-nam-loai-nao-tot-nhat.jpg',
  ];
  Timer? _timer;
  final PageController _controller = PageController();

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      ref.read(indexAdsProvider.notifier).state = (ref.read(indexAdsProvider) < ads.length - 1) ? ref.read(indexAdsProvider) + 1 : 0;
      _goToPage(ref.read(indexAdsProvider));
    });
  }

  void _goToPage(int index) {
    _controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 60, bottom: 10),
          color: ColorName.red1C,
          child: const HeaderHomeView(isHomePage: false),
        ),
        SizedBox(
          height: 200,
          child: PageView(
            controller: _controller,
            children: List.generate(ads.length, (index) {
              return Image.network(
                ads[index],
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              );
            }),
          ),
        ),
      ],
    );
  }
}
