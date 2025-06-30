import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shopee_clone/common/bottom_navigation_view.dart';
import 'package:shopee_clone/home/home_page.dart';
import 'package:shopee_clone/live/live_stream_page.dart';
import 'package:shopee_clone/mall/mall_page.dart';
import 'package:shopee_clone/notification/notification_page.dart';
import 'package:shopee_clone/profile/profile_page.dart';
import 'routes/app_route.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(
        supportedLocales: const [
          Locale('en'),
          Locale('vi', 'VN')
        ],
        fallbackLocale: const Locale('en'),
        path: 'resources/langs',
        child: MyApp(),
      ));
}

final routerProvider = GoRouter(
  initialLocation: '/home',
  routes: [
    ShellRoute(
      navigatorKey: GlobalKey<NavigatorState>(),
      builder: (context, state, child) {
        return Scaffold(
          body: child,
          bottomNavigationBar: const BottomNavigationView(), // Tab control
        );
      },
      routes: [
        GoRoute(
          path: '/home',
          pageBuilder: (context, state) => const MaterialPage(child: HomePage()),
        ),
        GoRoute(
          path: '/mall',
          pageBuilder: (context, state) => const MaterialPage(child: MallPage()),
        ),
        GoRoute(
          path: '/live-stream',
          pageBuilder: (context, state) => const MaterialPage(child: LiveStreamPage()),
        ),
        GoRoute(
          path: '/notification',
          pageBuilder: (context, state) => const MaterialPage(child: NotificationPage()),
        ),
        GoRoute(
          path: '/profile',
          pageBuilder: (context, state) => const MaterialPage(child: ProfilePage()),
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
        child: MaterialApp.router(
      title: 'Shopee Clone',
      routerConfig: routerProvider,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
    ));
  }
}
