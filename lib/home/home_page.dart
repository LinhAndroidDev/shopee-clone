import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopee_clone/generated/colors.gen.dart';
import 'package:shopee_clone/home/widgets/header_home_view.dart';
import 'package:shopee_clone/home/widgets/pay_home_view.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _HomePageState();
  }

}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: ColorName.primary,
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 60),
              HeaderHomeView(),
              SizedBox(height: 10),
              PayHomeView(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }

}