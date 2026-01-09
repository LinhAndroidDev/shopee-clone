import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shopee_clone/generated/assets.gen.dart';
import 'package:shopee_clone/generated/colors.gen.dart';
import 'package:shopee_clone/home/models/product_model.dart';
import 'package:shopee_clone/home/widgets/header_home_view.dart';
import 'package:shopee_clone/home/widgets/item_flash_sale_view.dart';
import 'package:shopee_clone/home/widgets/item_live_view.dart';
import 'package:shopee_clone/home/widgets/item_product_view.dart';
import 'package:shopee_clone/home/widgets/menu_voucher_view.dart';
import 'package:shopee_clone/home/widgets/pay_home_view.dart';

import 'models/voucher_model.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends ConsumerState<HomePage> {
  final List<VoucherModel> vouchers = [
    VoucherModel(title: 'ShopeeFood Giảm 50%', icon: Assets.images.icFood),
    VoucherModel(title: 'Mã Giảm Giá', icon: Assets.images.icFood),
    VoucherModel(title: 'Khách Hàng Thân Thiết', icon: Assets.images.icFood),
    VoucherModel(title: 'Hàng Chọn Giá Hời', icon: Assets.images.icFood),
    VoucherModel(title: 'Deal Hot Giờ Vàng', icon: Assets.images.icFood),
  ];
  
  final List<ProductModel> products = [
    ProductModel(detail: 'Máy cạo râu Enchen Blackstone 1/3, máy cạo râu chống nước IPX7, pin sạc, lưỡi dao nổi 3D', imageUrl: 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lyx4olja8rdtc3', price: 219000, rating: 4.2, quantitySold: 208, address: 'Hà nội', shippingTime: 'Hôm nay'),
    ProductModel(detail: 'Đồng Hồ Điện Tử Đèn Led Unisex 06 Thời Trang Cá Tính Phong Cách Hàn Quốc', imageUrl: 'https://down-vn.img.susercontent.com/file/vn-11134207-7ras8-m3tels6j8rlh67_tn.webp', price: 34500, rating: 4.8, quantitySold: 68, address: 'Hà nội', shippingTime: '1 - 3 ngày'),
    ProductModel(detail: 'Sét 3 Cuộn Túi Đựng Rác Tự Phân Huỷ Tiện Lợi Dùng Trong Gia Đình 55x65cm', imageUrl: 'https://down-vn.img.susercontent.com/file/2d27ec25a5de286e62fcaaa60b68c5b3', price: 0, rating: 4.7, quantitySold: 36256),
    ProductModel(detail: 'Combo 3 Áo Cộc Tay, Áo Phông Cổ Tròn Chất Thun Lạnh Thể Thao Cp Giãn 4 Chiều', imageUrl: 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lrzjmni2bmhl5f_tn.webp', price: 108900, rating: 4.9, quantitySold: 649, address: 'Nam Định', shippingTime: '1 - 3 ngày'),
    ProductModel(detail: 'Bọt cạo râu Gillette Foamy Hương Chanh / Hương Bạc Hà - Chai 50g/175g', imageUrl: 'https://down-vn.img.susercontent.com/file/vn-11134207-7ras8-mav6dn6j4zx306_tn.webp', price: 78000, rating: 4.9, quantitySold: 11689, address: 'Bắc Ninh', shippingTime: 'Hôm nay'),
    ProductModel(detail: '[ Combo 10 Túi ] 100 Cái Khẩu Trang 5D 3 Lớp Chống Nắng Chống Bụi Mịn Chống UV', imageUrl: 'https://down-vn.img.susercontent.com/file/vn-11134207-7ras8-m4yeqzehm05zfc', price: 12500, rating: 4.7, quantitySold: 3689, shippingTime: 'Hôm nay'),
    ProductModel(detail: 'Khăn Mặt Cotton Khăn Mặt Lông Cừu Siêu Mềm 30x50cm', imageUrl: 'https://down-vn.img.susercontent.com/file/vn-11134201-7r98o-lof8jnhlrppva1_tn.webp', price: 3000, quantitySold: 26307, address: 'Hà nội', shippingTime: '1 - 3 ngày'),
    ProductModel(detail: 'Bình nước giữ nhiệt 450ml hoạ tiết xương rồng, ly giữ nhiệt lõi thuỷ tinh bọc vỏ nhựa có dây leo', imageUrl: 'https://down-vn.img.susercontent.com/file/c067daedbc54a99f66daeaaeec25c837', price: 4500, rating: 4.6, quantitySold: 11378, address: 'Hà nội', shippingTime: '1 - 3 ngày'),
    ProductModel(detail: 'Bông Tai Dài Thỏ Nhồi Bông 2 Trong 1 Ráp Trái Cây Cosplay Dâu Và Cà Rốt Món Quà Dễ Thương', imageUrl: 'https://down-vn.img.susercontent.com/file/vn-11134207-7ras8-m3gg2bi1t130f1', price: 43800, quantitySold: 12167),
    ProductModel(detail: 'Set Trà Sữa Trân Châu Đường Đen EatMe - Set làm Trà Sửa Trân Châu Đường Đen 15 20 Ly', imageUrl: 'https://down-vn.img.susercontent.com/file/sg-11134201-23020-rsv4qfplzbnv87', price: 54300, rating: 4.9, quantitySold: 2000, address: 'Hà nội', shippingTime: 'Ngày Mai'),
  ];

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: ColorName.backgroundCommon,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  decoration: const BoxDecoration(
                    color: ColorName.primary,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 60),
                      const HeaderHomeView(),
                      const SizedBox(height: 10),
                      const PayHomeView(),
                      const SizedBox(height: 20),
                      SizedBox(
                          height: 100,
                          child: MenuVoucherView(vouchers: vouchers)),
                      const SizedBox(height: 170)
                    ],
                  ),
                ),
                const Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Expanded(child: ItemLiveView()),
                      SizedBox(width: 5),
                      Expanded(child: ItemFlashSaleView()),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: StaggeredGrid.count(
                crossAxisCount: 2,
                children: List.generate(products.length, (index) {
                  final product = products[index];
                  return ItemProductView(product: product);
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

}