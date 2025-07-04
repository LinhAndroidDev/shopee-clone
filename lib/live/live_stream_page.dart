import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class LiveStreamPage extends ConsumerStatefulWidget {
  const LiveStreamPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _LiveStreamPageState();
  }
}

class _LiveStreamPageState extends ConsumerState<LiveStreamPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Live Stream Page Content'),
    );
  }
}
