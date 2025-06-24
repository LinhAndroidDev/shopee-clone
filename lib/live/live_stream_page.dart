import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Stream'),
      ),
      body: const Center(
        child: Text('Live Stream Page Content'),
      ),
    );
  }
}
