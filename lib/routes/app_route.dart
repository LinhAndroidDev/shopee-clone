import 'package:auto_route/auto_route.dart';
import '../home/home_page.dart';
import '../live/live_stream_page.dart';
import '../mall/mall_page.dart';
import '../notification/notification_page.dart';
import '../profile/profile_page.dart';
part 'app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
// @override
// replaceInRouteName

  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
    /// routes go here
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: LiveStreamRoute.page),
    AutoRoute(page: MallRoute.page),
    AutoRoute(page: NotificationRoute.page),
    AutoRoute(page: ProfileRoute.page),
  ];
}