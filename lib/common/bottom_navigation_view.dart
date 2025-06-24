import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopee_clone/generated/assets.gen.dart';
import 'package:shopee_clone/generated/colors.gen.dart';

enum BottomNavigationViewItem {
  home(0),
  mall(1),
  liveStream(2),
  notification(3),
  profile(4);

  const BottomNavigationViewItem(this.value);

  final int value;

  static BottomNavigationViewItem ofValue(int value) {
    return BottomNavigationViewItem.values.firstWhere(
      (element) => element.index == value,
      orElse: () => BottomNavigationViewItem.home,
    );
  }

  SvgGenImage icon(BottomNavigationViewItem itemSelected) {
    switch (this) {
      case BottomNavigationViewItem.home:
        return (itemSelected == BottomNavigationViewItem.home) ? Assets.images.icHomeFill : Assets.images.icHome;
      case BottomNavigationViewItem.mall:
        return (itemSelected == BottomNavigationViewItem.mall) ? Assets.images.icMallFill : Assets.images.icMall;
      case BottomNavigationViewItem.liveStream:
        return (itemSelected == BottomNavigationViewItem.liveStream) ? Assets.images.icLiveStreamFill : Assets.images.icLiveStream;
      case BottomNavigationViewItem.notification:
        return (itemSelected == BottomNavigationViewItem.notification) ? Assets.images.icNotificationFill : Assets.images.icNotification;
      case BottomNavigationViewItem.profile:
        return (itemSelected == BottomNavigationViewItem.profile) ? Assets.images.icPersonalFill : Assets.images.icPersonal;
    }
  }

  String get label {
    switch (this) {
      case BottomNavigationViewItem.home:
        return 'Home';
      case BottomNavigationViewItem.mall:
        return 'Mall';
      case BottomNavigationViewItem.liveStream:
        return 'Live & Video';
      case BottomNavigationViewItem.notification:
        return 'Thông báo';
      case BottomNavigationViewItem.profile:
        return 'Tôi';
    }
  }
}

final currentIndexProvider = StateProvider<int>((ref) {
  return BottomNavigationViewItem.home.value;
});

class BottomNavigationView extends ConsumerStatefulWidget {
  const BottomNavigationView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends ConsumerState<BottomNavigationView> {
  final List<BottomNavigationViewItem> items = const [
    BottomNavigationViewItem.home,
    BottomNavigationViewItem.mall,
    BottomNavigationViewItem.liveStream,
    BottomNavigationViewItem.notification,
    BottomNavigationViewItem.profile,
  ];

  @override
  Widget build(BuildContext context) {
    final currentIndex = ref.watch(currentIndexProvider);
    final selectedItem = BottomNavigationViewItem.ofValue(currentIndex);
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index) {
        ref.read(currentIndexProvider.notifier).state = index;
      },
      items: items
          .map((e) => BottomNavigationBarItem(
                icon: e.icon(selectedItem).svg(
                      width: 30,
                      height: 30,
                      colorFilter: ColorFilter.mode(
                          currentIndex == e.value ? ColorName.orange30 : Colors.black.withOpacity(0.6), BlendMode.srcIn),
                    ),
                label: e.label,
                tooltip: e.label,
              ))
          .toList(),
      backgroundColor: Colors.white,
      selectedLabelStyle: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        color: ColorName.orange30,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        color: Colors.black.withOpacity(0.6),
      ),
      useLegacyColorScheme: false,
      showUnselectedLabels: true,
      showSelectedLabels: true,
    );
  }
}
