import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopee_clone/generated/assets.gen.dart';

@RoutePage()
class LiveStreamPage extends ConsumerStatefulWidget {
  const LiveStreamPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _LiveStreamPageState();
  }
}

class _LiveStreamPageState extends ConsumerState<LiveStreamPage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black,
      child: Stack(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.fromBorderSide(BorderSide(color: Colors.white, width: 2)),
                          image: DecorationImage(
                            image: NetworkImage('https://vuawebdigi.com/wp-content/uploads/2024/07/khoa-hoc-livestream-ban-hang-tai-vua-web-digi-chu-trong-thuc-hanh.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Icon(Icons.favorite, color: Colors.white, size: 40),
                      const Text('14', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500)),
                      const SizedBox(height: 20),
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()..scale(-1.0, 1.0), // Lật ngang
                        child: const Icon(Icons.chat, color: Colors.white, size: 40),
                      ),
                      const Text('0', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500)),
                      const SizedBox(height: 20),
                      Assets.images.icMessage.image(width: 50, height: 50),
                      const Text('Chia sẻ', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500)),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  children: [

                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Row(
              children: [
                const SizedBox(width: 15),
                Assets.images.icPerson.svg(width: 24, height: 24, colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
                const SizedBox(width: 10),
                Assets.images.icSearch.svg(width: 24, height: 24, colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
                const SizedBox(width: 15),
                Expanded(
                  child: TabBar(
                    controller: _tabController,
                    dividerHeight: 0,
                    isScrollable: true,
                    tabs: const [
                      Tab(text: 'Khám phá'),
                      Tab(text: 'Video'),
                      Tab(text: 'Live'),
                      Tab(text: 'Cho bạn'),
                    ],
                    labelStyle: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                    unselectedLabelStyle: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 14, fontWeight: FontWeight.w500),
                    indicatorColor: Colors.white,
                  ),
                ),
                const SizedBox(width: 20),
                Assets.images.icTvLive.svg(width: 24, height: 24, colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
                const SizedBox(width: 15),
              ],
            ),
          )
        ],
      ),
    );
  }
}
