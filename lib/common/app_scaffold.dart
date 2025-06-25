import 'package:flutter/material.dart';
import 'package:shopee_clone/common/bottom_navigation_view.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: const BottomNavigationView(),
    );
  }
}
