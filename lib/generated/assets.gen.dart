/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/ic_camera.svg
  SvgGenImage get icCamera => const SvgGenImage('assets/images/ic_camera.svg');

  /// File path: assets/images/ic_cart.svg
  SvgGenImage get icCart => const SvgGenImage('assets/images/ic_cart.svg');

  /// File path: assets/images/ic_chat.svg
  SvgGenImage get icChat => const SvgGenImage('assets/images/ic_chat.svg');

  /// File path: assets/images/ic_coin.svg
  SvgGenImage get icCoin => const SvgGenImage('assets/images/ic_coin.svg');

  /// File path: assets/images/ic_coin_gold.svg
  SvgGenImage get icCoinGold =>
      const SvgGenImage('assets/images/ic_coin_gold.svg');

  /// File path: assets/images/ic_credit_card.svg
  SvgGenImage get icCreditCard =>
      const SvgGenImage('assets/images/ic_credit_card.svg');

  /// File path: assets/images/ic_express.svg
  SvgGenImage get icExpress =>
      const SvgGenImage('assets/images/ic_express.svg');

  /// File path: assets/images/ic_food.svg
  SvgGenImage get icFood => const SvgGenImage('assets/images/ic_food.svg');

  /// File path: assets/images/ic_home.svg
  SvgGenImage get icHome => const SvgGenImage('assets/images/ic_home.svg');

  /// File path: assets/images/ic_home_fill.svg
  SvgGenImage get icHomeFill =>
      const SvgGenImage('assets/images/ic_home_fill.svg');

  /// File path: assets/images/ic_live_stream.svg
  SvgGenImage get icLiveStream =>
      const SvgGenImage('assets/images/ic_live_stream.svg');

  /// File path: assets/images/ic_live_stream_fill.svg
  SvgGenImage get icLiveStreamFill =>
      const SvgGenImage('assets/images/ic_live_stream_fill.svg');

  /// File path: assets/images/ic_location.svg
  SvgGenImage get icLocation =>
      const SvgGenImage('assets/images/ic_location.svg');

  /// File path: assets/images/ic_mall.svg
  SvgGenImage get icMall => const SvgGenImage('assets/images/ic_mall.svg');

  /// File path: assets/images/ic_mall_fill.svg
  SvgGenImage get icMallFill =>
      const SvgGenImage('assets/images/ic_mall_fill.svg');

  /// File path: assets/images/ic_menu_circle.svg
  SvgGenImage get icMenuCircle =>
      const SvgGenImage('assets/images/ic_menu_circle.svg');

  /// File path: assets/images/ic_notification.svg
  SvgGenImage get icNotification =>
      const SvgGenImage('assets/images/ic_notification.svg');

  /// File path: assets/images/ic_notification_fill.svg
  SvgGenImage get icNotificationFill =>
      const SvgGenImage('assets/images/ic_notification_fill.svg');

  /// File path: assets/images/ic_personal.svg
  SvgGenImage get icPersonal =>
      const SvgGenImage('assets/images/ic_personal.svg');

  /// File path: assets/images/ic_personal_fill.svg
  SvgGenImage get icPersonalFill =>
      const SvgGenImage('assets/images/ic_personal_fill.svg');

  /// File path: assets/images/ic_price.svg
  SvgGenImage get icPrice => const SvgGenImage('assets/images/ic_price.svg');

  /// File path: assets/images/ic_reward.svg
  SvgGenImage get icReward => const SvgGenImage('assets/images/ic_reward.svg');

  /// File path: assets/images/ic_scan.svg
  SvgGenImage get icScan => const SvgGenImage('assets/images/ic_scan.svg');

  /// File path: assets/images/ic_search.svg
  SvgGenImage get icSearch => const SvgGenImage('assets/images/ic_search.svg');

  /// File path: assets/images/ic_wallet.svg
  SvgGenImage get icWallet => const SvgGenImage('assets/images/ic_wallet.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        icCamera,
        icCart,
        icChat,
        icCoin,
        icCoinGold,
        icCreditCard,
        icExpress,
        icFood,
        icHome,
        icHomeFill,
        icLiveStream,
        icLiveStreamFill,
        icLocation,
        icMall,
        icMallFill,
        icMenuCircle,
        icNotification,
        icNotificationFill,
        icPersonal,
        icPersonalFill,
        icPrice,
        icReward,
        icScan,
        icSearch,
        icWallet
      ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
